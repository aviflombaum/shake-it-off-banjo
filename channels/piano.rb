class Piano < Banjo::Channel
  def channel
    0
  end

  def perform
    rhythm
    main_melody(8)
    
    play(d(3)).for(2).with_velocity(107).at(38)

    main_melody(40)
    melody_scale(72)
    main_melody(152)
    melody_scale(104)
    play(d(3)).for(2).at(132)
    play(d(3)).for(2).at(134)
    main_melody(136)
    play(d(3)).for(2).with_velocity(107).at(166)
  end

  def melody_scale(beat)
    play(d(4)).for(2).with_velocity(108).at(beat)
    play(b(3)).for(2).with_velocity(103).at(beat+2)
    play(a(3)).for(2).at(beat+4)
    play(g(3)).for(2).at(beat+6)    

    play(b(3)).for(2).with_velocity(103).at(beat+8)
    play(a(3)).for(2).at(beat+10)
    play(g(3)).for(2).at(beat+12)  
    play(e(3)).for(4).at(beat+20)
    play(d(3)).for(4).at(beat+24)  
  end


  def main_melody(beat)
    play(d(4)).for(2).with_velocity(108).at(beat)
    play(b(3)).for(2).with_velocity(103).at(beat+2)
    play(a(3)).for(2).at(beat+4)
    play(g(3)).for(2).at(beat+6)
    play(b(3)).for(4).at(beat+8)    
  end

  def rhythm
    # Piano Rythm
    rhythm_a(16)
    
    rhythm_b(48)

    rhythm_c(80)
    rhythm_c(112)
  end

  def rhythm_b(beat)
    play(c(2)).for(2).at(beat)
    play(c(3)).for(2).at(beat+2)
    play(c(3)).for(2).at(beat+4)
    play(c(3)).for(2).at(beat+8)
    play(c(3)).for(2).at(beat+14)
    play(c(3)).for(2).at(beat+16)
    play(c(3)).for(2).at(beat+20)
  end

  def rhythm_a(beat)
    play(a(1)).for(2).at(beat)    
    play(a(2)).for(2).at(beat+2)    
    play(a(2)).for(2).at(beat+4)
    play(a(2)).for(2).at(beat+8)    
    play(a(2)).for(2).at(beat+14)
    play(a(2)).for(2).at(beat+16)
    play(a(2)).for(2).at(beat+20)
  end  

  def rhythm_c(beat)
    play(g(1)).for(2).at(beat)    
    play(g(2)).for(2).at(beat+2)    
    play(g(2)).for(2).at(beat+4)
    play(g(2)).for(2).at(beat+8)    
    play(g(2)).for(2).at(beat+14)
    play(g(2)).for(2).at(beat+16)
    play(g(2)).for(2).at(beat+20)
  end
end 