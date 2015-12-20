{div, i, span, a} = React.DOM

Navigation = require('../../mixins/nav_mixin')

module.exports = React.createFactory React.createClass
  displayName: "Navigation"

  mixins: [Navigation]


  render: ->

    div {},
      div
        className: 'fixed-action-button navigation__fade-away'
        style: {position: "fixed", bottom: "45px", left: "24px"},
          div
            className: 'btn-floating btn-small waves-effect waves-light blue-grey lighten-5 round'
            onClick: @handleOnClickBack,
            i
              className: 'material-icons grey-text navigation__highlight',
                "fast_rewind"
      div
        className: 'fixed-action-button navigation__fade-away'
        style: {position: "fixed", bottom: "45px", left: "74px"},
          div
            className: 'btn-floating btn-small waves-effect waves-light blue-grey lighten-5 round'
            onClick: @handleOnClickForward,
            i
              className: 'material-icons grey-text navigation__highlight',
                "fast_forward"
      div
        className: 'fixed-action-button navigation__fade-away'
        style: {position: "fixed", bottom: "45px", left: "124px"},
          div
            className: 'btn-floating btn-small waves-effect waves-light blue-grey lighten-5 round'
            onClick: @handleOnClickHome,
            i
              className: 'material-icons grey-text navigation__highlight',
                "home"

      div
        className: 'navigation__love-text',
        style: {position: "fixed", bottom: "15px", left: "24px"},
          span
            className: 'grey-text navigation__highlight',
            div {},
              'Created with '
              i
                className: 'material-icons grey-text navigation__love-text-icon',
                  "favorite"
              a
                className: 'blue-grey-text'
                href: 'https://github.com/whatisinternet/Presentdown',
                  ' by Presentdown'

      div
        className: 'fixed-action-button'
        style: {position: "fixed", bottom: "45px", right: "24px"},
          div
            className: 'btn-floating btn-small waves-effect waves-light blue-grey lighten-5 round navigation__fade-away'
            onClick: @toggleFullScreen,
            i
              className: 'material-icons grey-text navigation__highlight',
                "settings_overscan"

