module.exports = {
  config: {
    copyOnSelect: true,

    // default font size in pixels for all tabs
    fontSize: 12,

    // font family with optional fallbacks
    fontFamily: '"Hasklig", "Inconsolata for Powerline", Menlo, "DejaVu Sans Mono", "Lucida Console", monospace',

    // terminal cursor background color (hex)
    cursorColor: '#02fdff',

    // color of the text
    foregroundColor: '#c5c8c6',

    // terminal background color
    backgroundColor: '#232c31',

    // border color (window, tabs)
    borderColor: '#3D464B',

    // custom css to embed in the main window
    css: '',

    // custom css to embed in the terminal window
    termCSS: '',

    // custom padding (css format, i.e.: `top right bottom left`)
    padding: '0px 0px',

    // some color overrides. see http://bit.ly/29k1iU2 for
    // the full list
    colors: [
      '#2d3c46',
      '#a54242',
      '#8c9440',
      '#de935f',
      '#5f819d',
      '#85678f',
      '#5e8d87',
      '#6c7a80',
      '#425059',
      '#cc6666',
      '#b5bd67',
      '#f0c674',
      '#81a2be',
      '#b294ba',
      '#8abeb7',
      '#c5c8c6'
    ]
  },

  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  // examples:
  //   `hyperpower`
  //   `@company/project`
  //   `project#1.0.1`
  plugins: [],

  // in development, you can create a directory under
  // `~/.hyperterm_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: []
}
