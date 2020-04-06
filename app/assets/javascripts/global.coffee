jQuery(document).on 'turbolinks:load', ->

  social_medias = $('#social_medias')
  count = social_medias.find('.count > span')

  recount = -> count.text social_medias.find('.nested-fields').size()

  social_medias.on 'cocoon:before-insert', (e, el_to_add) ->
    el_to_add.fadeIn(1000)

  social_medias.on 'cocoon:after-insert', (e, added_el) ->
    added_el.effect('highlight', {}, 500)
    recount()

  social_medias.on 'cocoon:before-remove', (e, el_to_remove) ->
    $(this).data('remove-timeout', 1000)
    el_to_remove.fadeOut(1000)

  social_medias.on 'cocoon:after-remove', (e, removed_el) ->
    recount()