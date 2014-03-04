pro ferengi_analysis


;--------------------------------------------------------------------
; ## Set up plotting
  cleanplot, /silent
  set_plot, 'ps'
  device, filename='fake_results.ps', $
          /color, /landscape, bits_per_pixel=8,  $
          /helvetica
  loadct, 0, /silent
  set_thick,4

  !p.charsize=2
  !p.font=0
;--------------------------------------------------------------------

; Read in Brooke's first most certainly incorrect reduction FITS file
data=mrdfits('../../data/ferengi_classifications_collated.fits',1)

; Note: We are testing on: T01_SMOOTH_OR_FEATURES_A02_FEATURES_FRAC for now.



  plot, [0], [0], $
        xr=[0, 1.2], xstyle=1, xtitle='redshift', $
        yr=[0, 1], ystyle=1, ytitle=textoidl('vote fraction for question X, f_{x,z}'), $
        xtickv=[0.0, 0.2, 0.4, 0.6, 0.8, 1.0, 1.2], xticks=6, $
        ytickv=[0.0, 0.25, 0.50, 0.75, 1.0], yticks=5


; Redshift array
  redshift_array_1=[0.030, 0.3+findgen(8)*0.1]



;--------------------------------------------------------------------
; ## Clean up
  device, /close
  set_plot, 'x'
  cleanplot, /silent
;--------------------------------------------------------------------

end
