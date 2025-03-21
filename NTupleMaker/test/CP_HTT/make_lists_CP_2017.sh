#!/bin/sh

CHANNEL=$1

dirMC=/pnfs/desy.de/cms/tier2/store/user/ywen/ntuples_Apr2020/2017/mc_v2
dirData=/pnfs/desy.de/cms/tier2/store/user/ywen/ntuples_Apr2020/2017/data
dirEmbedded=/pnfs/desy.de/cms/tier2/store/user/ywen/ntuples_Apr2020/2017/embedded

if [[ $CHANNEL == "mt" ]]; then
    OUTDIR=./mutau/2017
else   
    if [[ $CHANNEL == "et" ]]; then
	OUTDIR=./etau/2017
    else
	echo "ERROR: please run the script with ./make_lists_CP_2017.sh <channel={mt,et}>"
	exit
    fi
fi 

if [ ! -d "$OUTDIR" ]; then
  echo "Path does not exist: ${OUTDIR}"
  echo "Please create it"
  exit
fi

ls $dirMC/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/*root > $OUTDIR/DYJetsToLL_M-50
ls $dirMC/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_ext1/*root >> $OUTDIR/DYJetsToLL_M-50
ls $dirMC/DY1JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/*root > $OUTDIR/DY1JetsToLL_M-50
ls $dirMC/DY1JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_ext1/*root >> $OUTDIR/DY1JetsToLL_M-50
ls $dirMC/DY2JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/*root > $OUTDIR/DY2JetsToLL_M-50
ls $dirMC/DY2JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_ext1/*root >> $OUTDIR/DY2JetsToLL_M-50
ls $dirMC/DY3JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/*root > $OUTDIR/DY3JetsToLL_M-50
ls $dirMC/DY3JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8_ext1/*root >> $OUTDIR/DY3JetsToLL_M-50
ls $dirMC/DY4JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/*root > $OUTDIR/DY4JetsToLL_M-50 
ls $dirMC/DYJetsToLL_M-10to50_TuneCP5_13TeV-madgraphMLM-pythia8/*root > $OUTDIR/DYJetsToLL_M-10to50

ls $dirMC/WJetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8/*root > $OUTDIR/WJetsToLNu
ls $dirMC/WJetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8_ex1/*root >> $OUTDIR/WJetsToLNu
ls $dirMC/W1JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8/*root > $OUTDIR/W1JetsToLNu
ls $dirMC/W2JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8/*root > $OUTDIR/W2JetsToLNu
ls $dirMC/W3JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8/*root > $OUTDIR/W3JetsToLNu
ls $dirMC/W4JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8/*root > $OUTDIR/W4JetsToLNu

ls $dirMC/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_13TeV-madgraph-pythia8/*root > $OUTDIR/EWKWPlus2Jets_WToLNu_M-50
ls $dirMC/EWKWMinus2Jets_WToLNu_M-50_TuneCP5_13TeV-madgraph-pythia8/*root > $OUTDIR/EWKWMinus2Jets_WToLNu_M-50
ls $dirMC/EWKZ2Jets_ZToLL_M-50_TuneCP5_13TeV-madgraph-pythia8/*root > $OUTDIR/EWKZ2Jets_ZToLL_M-50
ls $dirMC/EWKZ2Jets_ZToNuNu_TuneCP5_13TeV-madgraph-pythia8/*root > $OUTDIR/EWKZ2Jets_ZToNuNu

ls $dirMC/TTTo2L2Nu_TuneCP5_13TeV-powheg-pythia8/*root > $OUTDIR/TTTo2L2Nu
ls $dirMC/TTToSemiLeptonic_TuneCP5_13TeV-powheg-pythia8/*root > $OUTDIR/TTToSemiLeptonic
ls $dirMC/TTToHadronic_TuneCP5_13TeV-powheg-pythia8/*root > $OUTDIR/TTToHadronic
ls $dirMC/TTTo2L2Nu_TuneCP5_PSweights_13TeV-powheg-pythia8/*root >> $OUTDIR/TTTo2L2Nu
ls $dirMC/TTToSemiLeptonic_TuneCP5_PSweights_13TeV-powheg-pythia8/*root >> $OUTDIR/TTToSemiLeptonic
ls $dirMC/TTToHadronic_TuneCP5_PSweights_13TeV-powheg-pythia8/*root >> $OUTDIR/TTToHadronic

ls $dirMC/ST_t-channel_top_4f_inclusiveDecays_TuneCP5_13TeV-powhegV2-madspin-pythia8/*root > $OUTDIR/ST_t-channel_top_4f
ls $dirMC/ST_t-channel_antitop_4f_inclusiveDecays_TuneCP5_13TeV-powhegV2-madspin-pythia8/*root > $OUTDIR/ST_t-channel_antitop_4f
ls $dirMC/ST_tW_top_5f_inclusiveDecays_TuneCP5_13TeV-powheg-pythia8/*root > $OUTDIR/ST_tW_top_5f
ls $dirMC/ST_tW_antitop_5f_inclusiveDecays_TuneCP5_13TeV-powheg-pythia8/*root > $OUTDIR/ST_tW_antitop_5f

ls $dirMC/WW_TuneCP5_13TeV-pythia8/*root > $OUTDIR/WW
ls $dirMC/WZ_TuneCP5_13TeV-pythia8/*root > $OUTDIR/WZ
ls $dirMC/ZZ_TuneCP5_13TeV-pythia8/*root > $OUTDIR/ZZ

ls $dirMC/VVTo2L2Nu_13TeV_amcatnloFXFX_madspin_pythia8/*root > $OUTDIR/VVTo2L2Nu
ls $dirMC/WZTo2L2Q_13TeV_amcatnloFXFX_madspin_pythia8/*root > $OUTDIR/WZTo2L2Q
ls $dirMC/WZTo3LNu_TuneCP5_13TeV-amcatnloFXFX-pythia8/*root > $OUTDIR/WZTo3LNu
ls $dirMC/ZZTo2L2Q_13TeV_amcatnloFXFX_madspin_pythia8/*root > $OUTDIR/ZZTo2L2Q
ls $dirMC/ZZTo4L_TuneCP5_13TeV-amcatnloFXFX-pythia8/*root > $OUTDIR/ZZTo4L

ls $dirMC/GluGluHToWWTo2L2Nu_M125_13TeV_powheg2_JHUGenV714_pythia8/*root > $OUTDIR/GluGluHToWWTo2L2Nu_M125
ls $dirMC/VBFHToWWTo2L2Nu_M125_13TeV_powheg2_JHUGenV714_pythia8/*root > $OUTDIR/VBFHToWWTo2L2Nu_M125
ls $dirMC/GluGluZH_HToWW_M125_13TeV_powheg_pythia8_TuneCP5/*root > $OUTDIR/GluGluZH_HToWW_M125
ls $dirMC/HWminusJ_HToWW_M125_13TeV_powheg_pythia8_TuneCP5/*root > $OUTDIR/HWminusJ_HToWW_M125
ls $dirMC/HWplusJ_HToWW_M125_13TeV_powheg_pythia8_TuneCP5/*root > $OUTDIR/HWplusJ_HToWW_M125
ls $dirMC/HZJ_HToWW_M125_13TeV_powheg_jhugen714_pythia8_TuneCP5/*root > $OUTDIR/HZJ_HToWW_M125

ls $dirMC/GluGluHToTauTauUncorrelatedDecay_M125/*root > $OUTDIR/GluGluHToTauTauUncorrDecays_M125
ls $dirMC/VBFHToTauTauUncorrelatedDecay_M125/*root > $OUTDIR/VBFHToTauTauUncorrDecays_M125
ls $dirMC/WminusHToTauTauUncorrelatedDecay_M125/*root > $OUTDIR/WminusHToTauTauUncorrDecays_M125
ls $dirMC/WplusHToTauTauUncorrelatedDecay_M125/*root > $OUTDIR/WplusHToTauTauUncorrDecays_M125
ls $dirMC/ZHToTauTauUncorrelatedDecay_M125/*root > $OUTDIR/ZHToTauTauUncorrDecays_M125

if [[ $CHANNEL == "mt" ]]; then
  ls $dirData/SingleMuon_Run2017B-31Mar2018-v1/*root > $OUTDIR/SingleMuon_Run2017B
  ls $dirData/SingleMuon_Run2017C-31Mar2018-v1/*root > $OUTDIR/SingleMuon_Run2017C
  ls $dirData/SingleMuon_Run2017D-31Mar2018-v1/*root > $OUTDIR/SingleMuon_Run2017D
  ls $dirData/SingleMuon_Run2017E-31Mar2018-v1/*root > $OUTDIR/SingleMuon_Run2017E
  ls $dirData/SingleMuon_Run2017F-31Mar2018-v1/*root > $OUTDIR/SingleMuon_Run2017F

  ls $dirEmbedded/Embedding_mutau/EmbeddingRun2017B_MuTau/*root > $OUTDIR/EmbeddedMuTau_Run2017B
  ls $dirEmbedded/Embedding_mutau/EmbeddingRun2017C_MuTau/*root > $OUTDIR/EmbeddedMuTau_Run2017C
  ls $dirEmbedded/Embedding_mutau/EmbeddingRun2017D_MuTau/*root > $OUTDIR/EmbeddedMuTau_Run2017D
  ls $dirEmbedded/Embedding_mutau/EmbeddingRun2017E_MuTau/*root > $OUTDIR/EmbeddedMuTau_Run2017E
  ls $dirEmbedded/Embedding_mutau/EmbeddingRun2017F_MuTau/*root > $OUTDIR/EmbeddedMuTau_Run2017F
fi

if [[ $CHANNEL == "et" ]]; then
  ls $dirData/SingleElectron_v2/SingleElectron_Run2017B-31Mar2018-v1/*root > $OUTDIR/SingleElectron_Run2017B
  ls $dirData/SingleElectron_v2/SingleElectron_Run2017C-31Mar2018-v1/*root > $OUTDIR/SingleElectron_Run2017C
  ls $dirData/SingleElectron_v2/SingleElectron_Run2017D-31Mar2018-v1/*root > $OUTDIR/SingleElectron_Run2017D
  ls $dirData/SingleElectron_v2/SingleElectron_Run2017E-31Mar2018-v1/*root > $OUTDIR/SingleElectron_Run2017E
  ls $dirData/SingleElectron_v2/SingleElectron_Run2017F-31Mar2018-v1/*root > $OUTDIR/SingleElectron_Run2017F
  
  ls $dirEmbedded/Embedding_eltau_v2/EmbeddingRun2017B_ElTau/*root > $OUTDIR/EmbeddedElTau_Run2017B
  ls $dirEmbedded/Embedding_eltau_v2/EmbeddingRun2017C_ElTau/*root > $OUTDIR/EmbeddedElTau_Run2017C
  ls $dirEmbedded/Embedding_eltau_v2/EmbeddingRun2017D_ElTau/*root > $OUTDIR/EmbeddedElTau_Run2017D
  ls $dirEmbedded/Embedding_eltau_v2/EmbeddingRun2017E_ElTau/*root > $OUTDIR/EmbeddedElTau_Run2017E
  ls $dirEmbedded/Embedding_eltau_v2/EmbeddingRun2017F_ElTau/*root > $OUTDIR/EmbeddedElTau_Run2017F
fi
