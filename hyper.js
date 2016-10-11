module.exports = {
  config: {
    // default font size in pixels for all tabs
    fontSize: 12,

    // font family with optional fallbacks
    fontFamily: '"Hasklig", "Inconsolata for Powerline", Menlo, "DejaVu Sans Mono", "Lucida Console", monospace',

    // terminal cursor background color (hex)
    cursorColor: '#c7c7c7',

    // color of the text
    foregroundColor: '#c8c8c8',

    // terminal background color
    backgroundColor: '#323333',

    // border color (window, tabs)
    borderColor: '#3f3f3f',

    // custom css to embed in the main window
    css: '',

    // custom css to embed in the terminal window
    termCSS: '',

    // custom padding (css format, i.e.: `top right bottom left`)
    padding: '0px 0px',

    // some color overrides. see http://bit.ly/29k1iU2 for
    // the full list
    colors: [
      '#252525',
      '#be7472',
      '#719772',
      '#999872',
      '#719abd',
      '#727499',
      '#719899',
      '#7f7f7f',
      '#565656',
      '#ff9a00',
      '#98bb99',
      '#fffdbd',
      '#a0bedf',
      '#999abd',
      '#70bcbd',
      '#ffffff'
    ]
  },

  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  // examples:
  //   `hyperpower`
  //   `@company/project`
  //   `project#1.0.1`
  plugins: [
  ],

  // in development, you can create a directory under
  // `~/.hyperterm_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: []
}
