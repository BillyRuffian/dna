module Codons
  
  AminoAcid = Data.define(:name, :tla, :ola)

  ACIDS = {
    ala: AminoAcid.new('Alanine',       'Ala', 'A'),
    arg: AminoAcid.new('Arginine',      'Arg', 'R'),
    asn: AminoAcid.new('Asparagine',    'Asn', 'N'),
    asp: AminoAcid.new('Aspartic acid', 'Asp', 'D'),
    cys: AminoAcid.new('Cysteine',      'Cys', 'C'),
    glu: AminoAcid.new('Glutamic acid', 'Glu', 'E'),
    gln: AminoAcid.new('Glutamine',     'Gln', 'Q'),
    gly: AminoAcid.new('Glycine',       'Gly', 'G'),
    his: AminoAcid.new('Histidine',     'His', 'H'),
    ile: AminoAcid.new('Isoleucine',    'Ile', 'I'),
    leu: AminoAcid.new('Leucine',       'Leu', 'L'),
    lys: AminoAcid.new('Lysine',        'Lys', 'K'),
    met: AminoAcid.new('Methionine',    'Met', 'M'),
    phe: AminoAcid.new('Phenylalanine', 'Phe', 'F'),
    pro: AminoAcid.new('Proline',       'Pro', 'P'),
    ser: AminoAcid.new('Serine',        'Ser', 'S'),
    thr: AminoAcid.new('Threonine',     'Thr', 'T'),
    trp: AminoAcid.new('Tryptophan',    'Trp', 'W'),
    tyr: AminoAcid.new('Tyrosine',      'Tyr', 'Y'),
    val: AminoAcid.new('Valine',        'Val', 'V'),
    stp: AminoAcid.new('STOP',          'STP', '!')
  }

  MAP = {
    'TTT' => ACIDS[:phe],
    'TTC' => ACIDS[:phe],
    'TTA' => ACIDS[:leu],
    'TTG' => ACIDS[:leu],

    'TCT' => ACIDS[:ser],
    'TCC' => ACIDS[:ser],
    'TCA' => ACIDS[:ser],
    'TCG' => ACIDS[:ser],

    'TAT' => ACIDS[:tyr],
    'TAC' => ACIDS[:tyr],
    'TAA' => ACIDS[:stp],
    'TAG' => ACIDS[:stp],

    'TGT' => ACIDS[:cys],
    'TGC' => ACIDS[:cys],
    'TGA' => ACIDS[:stp],
    'TGG' => ACIDS[:trp],

    'CTT' => ACIDS[:leu],
    'CTC' => ACIDS[:leu],
    'CTA' => ACIDS[:leu],
    'CTG' => ACIDS[:leu],

    'CCT' => ACIDS[:pro],
    'CCC' => ACIDS[:pro],
    'CCA' => ACIDS[:pro],
    'CCG' => ACIDS[:pro],

    'CAT' => ACIDS[:his],
    'CAC' => ACIDS[:his],
    'CAA' => ACIDS[:gln],
    'CAG' => ACIDS[:gln],

    'CGT' => ACIDS[:arg],
    'CGC' => ACIDS[:arg],
    'CGA' => ACIDS[:arg],
    'CGG' => ACIDS[:arg],

    'ATT' => ACIDS[:ile],
    'ATC' => ACIDS[:ile],
    'ATA' => ACIDS[:ile],
    'ATG' => ACIDS[:met],

    'ACT' => ACIDS[:thr],
    'ACC' => ACIDS[:thr],
    'ACA' => ACIDS[:thr],
    'ACG' => ACIDS[:thr],

    'AAT' => ACIDS[:asn],
    'AAC' => ACIDS[:asn],
    'AAA' => ACIDS[:lys],
    'AAG' => ACIDS[:lys],
    
    'AGT' => ACIDS[:ser],
    'AGC' => ACIDS[:ser],
    'AGA' => ACIDS[:arg],
    'AGG' => ACIDS[:arg],
    
    'GTT' => ACIDS[:val],
    'GTC' => ACIDS[:val],
    'GTA' => ACIDS[:val],
    'GTG' => ACIDS[:val],

    'GCT' => ACIDS[:ala],
    'GCC' => ACIDS[:ala],
    'GCA' => ACIDS[:ala],
    'GCG' => ACIDS[:ala],
    
    'GAT' => ACIDS[:asp],
    'GAC' => ACIDS[:asp],
    'GAA' => ACIDS[:glu],
    'GAG' => ACIDS[:glu],
    
    'GGT' => ACIDS[:gly],
    'GGC' => ACIDS[:gly],
    'GGA' => ACIDS[:gly],
    'GGG' => ACIDS[:gly],
  }

end