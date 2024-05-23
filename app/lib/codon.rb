class Codon
  
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
    stp: AminoAcid.new('STOP',          '!!!', '!')
  }

  CODONS = {
    'UUU' => ACIDS[:phe],
    'UUC' => ACIDS[:phe],
    'UUA' => ACIDS[:leu],
    'UUG' => ACIDS[:leu],

    'UCU' => ACIDS[:ser],
    'UCC' => ACIDS[:ser],
    'UCA' => ACIDS[:ser],
    'UCG' => ACIDS[:ser],

    'UAU' => ACIDS[:tyr],
    'UAC' => ACIDS[:tyr],
    'UAA' => ACIDS[:stp],
    'UAG' => ACIDS[:stp],

    'UGU' => ACIDS[:cys],
    'UGC' => ACIDS[:cys],
    'UGA' => ACIDS[:stp],
    'UGG' => ACIDS[:trp],

    'CUU' => ACIDS[:leu],
    'CUC' => ACIDS[:leu],
    'CUA' => ACIDS[:leu],
    'CUG' => ACIDS[:leu],

    'CCU' => ACIDS[:pro],
    'CCC' => ACIDS[:pro],
    'CCA' => ACIDS[:pro],
    'CCG' => ACIDS[:pro],

    'CAU' => ACIDS[:his],
    'CAC' => ACIDS[:his],
    'CAA' => ACIDS[:gln],
    'CAG' => ACIDS[:gln],

    'CGU' => ACIDS[:arg],
    'CGC' => ACIDS[:arg],
    'CGA' => ACIDS[:arg],
    'CGG' => ACIDS[:arg],
  }

end