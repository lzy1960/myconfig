const log = (...args) => console.log('[userscripts] ', ...args)

const createElementSelectionObserver = (selector, callback) => {
    const observer = new MutationObserver((mutations) => {

        let nodes = []
        for (const mutation of mutations) {
            if (mutation.type !== 'childList') {
                continue
            }
            let nodes = mutation.addedNodes
            for (const node of nodes) {
                if (typeof node.matches === 'function' && !node.matches(selector)) {
                    continue
                }
                log('found node', node)
                callback(node)
            }

        }

    });

    observer.observe(document.body, {
        childList: true,
        subtree: true,
    })
}

const getNodeInShadowRoot = (selector) => (shadowRoot) => {
    return shadowRoot.querySelector(selector)
}

const createStyleSheet = (css) => {
    const style = document.createElement('style')
    style.type = 'text/css'
    style.appendChild(document.createTextNode(css))
    return style
}

const createStyleSheetAppender = (node) => (css) => {
    log('appending stylesheet to', node)
    const style = createStyleSheet(css)
    node.appendChild(style)
}

log('ready')

function ContextmenuStylesheet() {

    const sheet = new CSSStyleSheet()

    sheet.replaceSync(`
.monaco-menu {
    position: relative;
    font-family: 'UbuntuSans Nerd Font Semibold', 'Sarasa Term SC Semibold' !important;
}
.monaco-menu::before {
    content: '';
    position: absolute;
    width: 100%;
    height: 100%;
    z-index: -1;
    background: #00000001;
    backdrop-filter: blur(8px);
}
    `)
    return sheet
}

// this one is a shadow root, so we need to adopt the stylesheet
createElementSelectionObserver('.shadow-root-host', (node) => {
    const shadow = node.shadowRoot

    if (!shadow) {
        log('menu has no shadowroot', menu)
        return
    }

    log('shadow: appending stylesheet to', shadow)
    const sheet = ContextmenuStylesheet()
    shadow.adoptedStyleSheets.push(sheet)

})
