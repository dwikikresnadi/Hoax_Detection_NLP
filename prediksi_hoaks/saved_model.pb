??
?%?%
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
K
Bincount
arr
size
weights"T	
bins"T"
Ttype:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Cumsum
x"T
axis"Tidx
out"T"
	exclusivebool( "
reversebool( " 
Ttype:
2	"
Tidxtype0:
2	
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(?
=
Greater
x"T
y"T
z
"
Ttype:
2	
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
.
Identity

input"T
output"T"	
Ttype
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
Tvaluestype?
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
?
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
?
MutableHashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
RaggedTensorToTensor
shape"Tshape
values"T
default_value"T:
row_partition_tensors"Tindex*num_row_partition_tensors
result"T"	
Ttype"
Tindextype:
2	"
Tshapetype:
2	"$
num_row_partition_tensorsint(0"#
row_partition_typeslist(string)
@
ReadVariableOp
resource
value"dtype"
dtypetype?
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
e
StringSplitV2	
input
sep
indices	

values	
shape	"
maxsplitint?????????
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.22v2.6.2-0-gc2363d6d0258??
?
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?N?*%
shared_nameembedding/embeddings

(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings* 
_output_shapes
:
?N?*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	?*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
k

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name133*
value_dtype0	
|
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name	table_7*
value_dtype0	
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?N?*,
shared_nameAdam/embedding/embeddings/m
?
/Adam/embedding/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/m* 
_output_shapes
:
?N?*
dtype0
?
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*$
shared_nameAdam/dense/kernel/m
|
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes
:	?*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:*
dtype0
?
Adam/embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?N?*,
shared_nameAdam/embedding/embeddings/v
?
/Adam/embedding/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/v* 
_output_shapes
:
?N?*
dtype0
?
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*$
shared_nameAdam/dense/kernel/v
|
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes
:	?*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:*
dtype0
G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R
H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B 
I
Const_2Const*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_3Const*
_output_shapes
: *
dtype0	*
value	B	 R 
??
Const_4Const*
_output_shapes	
:?N*
dtype0*??
value??B???NBpresidenBperintahBnegaraB
masyarakatBjokowiBmenteriBpartaiBmiluBhasilBjakartaBkotaBkaitBjalanBpersenBaturBhukumBsehatBketuaBkepalaBpilihBtniB	informasiBjabatBterimaBnamaBpolitikBbangunB	kabupatenBdasarBtemuBtingkatBdaerahBtahanBrumahBwargaBnomorBtulisBmediaBdprBsosialBduniaBdukungBnilaiBbuahBwakilBdugaBpimpinBanggotaBnasionalBuangBiknBlaporBberitaBsakitBjawaBtindakBkpkBedarBlaksanaBanakBtundaBpolisiBtinggalBrakyatBekonomiBtugasBbaratB	vaksinasiBpasalBterangBputusBairBsuaraBbantuBmakanBkorbanBusahaBislamBtanganBnegeriBprosesBkorupsiBkuatBkerasBpublikBbangsaBvaksinBdataButamaBprabowoBagamaBmasjidBsurveiBfebruariBrpBharapBikanBriBsebarBpolriBpidanaBsuratBjutaBsesuaiBuuBbukaBjumatBsangkaBbentukBcapaiBamanBakibatBambilBmanusiaBcepatBperiksaBpusatBwilayahBtimurBbadanBhubungBtanahBkembangBbuktiBcalonBhidupBptBdosisBmatiBtolakBturunBhargaBlengkapBpesanBusulBbatasBukrainaBleleBrencanaBwacanaBbijakBvirusBjenderalBkondisiBalamiBbicaraBkeluargaBubahBselasaBgubernurBkamisBtutupBrabuBserangBhadirBresmiBhakBpandemiBtimBadilBkandungBjokoBupayaBbutuhBmaretBaksiBkomisiBnarasiBbidangBbakarBbpjsBurusBisuBbedaBwidodoBdanaBaniesBprogramBprovinsiBrusiaBlembagaBseninBbawaBalasBdidikBsistemBtangkapB	referensiBklaimBkabarBmunculBmingguBdarahBusiaBkuasaBdesaBlayanBkelompokBgiatBgelarBbeliBdudukBangkatBcatatBundangundangBjagaBselatanBjualBacaraBisiBperindoButaraBgambarBmantanBtotalBmanfaatBajarBanggapBchinaB	nusantaraBpakaiBpasienBpenuhBselesaiBdkiBpesawatBjaksaBperkaraBbayarBtanggalB
selenggaraBjhtBmudahBsyaratBkutipBjamBbahanBperiodeBkontenBselamatBhentiBwajibBtubuhBangkaBsikapBlindungBganjarB
konstitusiBdampakBdirekturBjaminBbebasBbandingBlibatBkirimBpdipBpositifBpercayaBpapuaBkantorBampBkenalBperangBbahasaBbahasBayatBotoritaBpahamBkpuBlevelB	demokrasiBwibBobatBbahayaBumatBdaftarBindraBdokterBpokemonBsaksiBmiliterBaplikasiBunggahBaktifBproyekBpilpresBmalamBbrigjenBbiayaBlautBsembuhBcariB
komunikasiBarahBpuanBmenangBposisiBlanggarBstatusBkankerBsekolahBhakimBgantiBsabtuBdrBjuangBbabiBpasarBpindahBasBamerikaBgajiBcegahBoperasiBkelolaBjanuariBperhatiBpikirBkonsumsiBtuntutBminyakBmiliarBbuluBartikelB
kalimantanBminumBwniBjenisBserikatB	perempuanBrapatBfaktaBpersBizinBbudayaBpaparBmuslimBtenagaBsediaB	kompascomBruangBtekanBmajuBlokasiBrugiBagungBterbitBmuhaiminBklarifikasiBlarangBahliBsikatBluasBtokohBpulauBelektabilitasBaliBjudulBcamatBallahBsisiBruuBujiBrepublikBkawasanBppkmBtolongBalatBmainBalamBhilangBgangguBasliBperanB	nurhayatiBbarangBtelitiBtahapBinternasionalBalBtimbulBpasangBstrokeBcobaBhamBberantasBomicronBpuasBsulawesiBiiBcapresBlangkahBanggarBsituasiBisBundangBpotensiBlingkungBlahirBciptaBmerahBderitaBdorongB
permenakerBmaafBistiqlalBcontohBsidikBtataBhormatBkasihB	airlanggaBulamaBcairBtelusurBsurabayaBprodukBhajiBstafBmudaBcoronaBuniversitasBsenjataB
organisasiBlatihBmukaBandiBtargetBsoehartoBsipilBiphoneBgempaBaprilBajuBsumateraBgigiBtipuBbekasBberatBinfoBdinasBterapBkapolriBtwitterBsuapBgusBudaraBbeliauBmobilBdayaBkompasBselBbencanaBvarianBrusakBgedungBforBrangkaBtanggungBbunuhB	peristiwaB
konfirmasiBsitusBdengarBwhatsappBsosokBpkbBlawanBkhawatirBkapalBsulitBgabungBwaspadaBjatuhBribuBpenjaraBnasdemBpengaruhBboosterBanakanakBrayaBluhutBbupatiBbinomoBbankBtandaBsumberBonBbalBupaBarabBmaksimalBlansirBbaswedanBuudB	teknologiBsadarBancamBpandangBjanjiBlepasBasingBasetBtarikB
sekretarisBrawanBistanaBacehBwujudBgorengBsidangBkunjungBkenzBkendaraBnuBdagangBawasB	postinganB	pancasilaBmerdekaBburuhBproduksiBpanglimaBtungguBmajelisBguruBkendaliBjuruBmenagBgerindraB	bareskrimBparpolBdewanBmogaBkonflikBhoaksBpanggilBtimbangBreogBpanBtuaB
orangorangBtumbuhBtesBgolkarB	mahasiswaBkelasBibadahB	respondenBmasingmasingBtaniBadBtriliunBsambutBdesemberBtanggapBkalangBdppBdamaiB	sejahteraBaliasBterorisBpriaBhindarBaspirasiBsejarahBpribadiBprajuritBjuniorB	fasilitasBulangBtemanBpermenBpalsuBhatiBsitaBindustriBupdateBkumpulBserahBnewsBrendahBnoBawatBkomnasBviralBsatgasByoutubeBtempurBpagiBlahanBsaudaraBpaksaBlantikBgeraBbumiBmkBonlineBtumilaarBevakuasiBgejalaBputihBmahfudBkonteksBhumasBenamBcakBsifatBseksualBdemokratBeraBaksesBwadasBtampilBkaderBwartawanButkBnovemberBglobalBburukBahokBahmadBagusBsubiantoBpulihBpuncakBtembakBsemangatBgerakBterbangBpintuBtnipolriBpegawaiBoktoberBwarnaBtularB	singapuraBmabesB	deklarasiBaparatBsiarBkjriBbristleBhitungBpulangBpasuBiminBpicuBajakBnilaBdakwaBabdulBdavaoBasnBsahBlapangBhastoBfungsiBtenggaraBsigitBpbbB
koordinasiBcovidBvirtualBtentaraBpanasBhapusBgaramBceritaBbelaBpensiunBmaskerBkoordinatorBgarudaB	strategisBpungkasBinfeksiBerickBwanitaBsiBbinaBpilkadaBnarkobaBmuiBkoalisiBkemarinBkursiBkemenkesBilmuBhalalBpoldaB	investasiBkuasBcinaBmotorBmenitBnegatifBkategoriBjasaBaminBsaudiBsalurBrisikoBridwanBksadBkayaBlintasBlamanBdudungBdiskusiBtegakBmestiBanandaBuntungBaspekBsaidBmaluBbilangByahudiB	travelokaBpegangB
konferensiBjahatBgugatB	pertaminaB	instruksiBfokusBsukaBrsBplusBpartisipasiBprinsipBmeiBkamilBdampingBajaBunitBmuhammadBdaulatBbogorBbocorBblokirBmahkamahBjiwaBgrupBtuhanBsingkatBkaryaBitBdepokBwenangBtdkBrevisiBpantauBotakBnegaranegaraBbangkitBundurBtpksBriauBprotokolB	mayoritasBcabutBbohongBbandungBketenagakerjaanBjamaahBbrimobB	apresiasiBresponsBjadwalBgroupBazisBsayangBpokokBistriBistilahBukurBsektorBiskandarBcintaBpranowoBpksByaqutBtewasBtakutBkakiBagustusBpeluangBmuhammadiyahBbumnBbanBwaliBrutanBlayakBlansiaBhutanBbelandaBsoekarnoBppBinggrisBdoaBsilaBsasarBpanganBmedanBjayaBbudiBbayiBmetodeBlantarBandikaBimbauBthisBthatBsepakatBpidatoBoutBjuliBisraelBbukuBbinBtitikBrujukB
rudiantaraBmenkoBkualitasBdisiplinBdaratBbisnisBwhoBdpdBcuciBtawarBtanamBramaiBkritikBkotorBjantungBiiiBeliteBbyBbiarBalihBsengajaBratusBpuluhBpemudaBmuatBkomitmenBbawasluBjuniBbambangBmarufBlitbangB	kapasitasB
yogyakartaBagamBujungBpostBponorogoBpoinBlukaBlayarBgerejaBdprdBdokumenBwayangBrawatBpakarBkaumBharamBsusunBsoreB	lemhannasBwaBsuntikBmodalBdigitalBbunyiBtrenBsidiB	septemberBrahmatBpeduliBmaknaBgoBberantaBrekamBkajiBjarumBjajarBgagasBcirebonB
benarbenarBterjemahBpecahBhartartoBdgnBolahBjaringBdaringBalquranB	sederhanaBpcrBkartuBapiB
antisipasiBsusulBmandiriBkampanyeBidaBfraksiBcekBbantenBwithBsdhBsaranBrancangB	pesantrenBpersonelBgenerasiBforumBamanatB	aktivitasBsbyBjepangBtujuhBsapaBbersihBbatuBstrategiBmegawatiByouBlemahBlambatBikatBevaluasiBblokBsorotBrilisBkomentarBimbuhB	eksekutifBumurBsimpulBshareBgatotBbagusBthohirBrusuhBrajaB	prioritasBkriteriaBfaktorBtantangBseriusB	reformasiBpkiBpenBmedisBkabupatenkotaBsintaBpolemikBkunciBhewanBfromBbesokBseniBselamBsampingBmassaBlidiBjawabaliBhancurBhabisBenergiBpatiBparlemenBlurahBkspBkemasBkalahBimamBcityBberaniBappleBvonisBunsurBtusukBkampungBgratisB
elektronikBdanatauBbebanBurutBsuksesBsosialisasiBlokalB	komunitasB	indikatorBgunungBeksBusungBtambangBledakBgoogleBtunjangBtayangBjelangBintiB	instagramBfirstBunggulBsriBsanksiBsahabatBnggakBjagungBinfrastrukturBgakBdagingBbomBbelahBbanggaBmprBlengkungBgolongBefektifBpolresBpajakBkuhpBkecualiBjabarBefekBcantumBtvBteleponBsambungBringanBmariBkhB
widjajantoBtumBrupiahBnormalBlantasBkerapBgagalBdiamBbintangB	wawancaraBtiketBsaingBpresBniatBmalaysiaBdensusBalirBsangBracunBfenomenaBeropaBbandaraBagendaBsinggungBsimpanBlatarBkomorbidBisolasiBinternalBtuduhBretnoBpolBpangkatB
kemendagriBkanisiusBdaruratBanBsuryaBsukuB	publikasiBpisahBmaharaniBkemenluBindiaBibnuBgameBeffendiBkopiBfirliBfilipinaBareaBareBanjingBsalatBramadhanBprofBkonsepBjoBhijauBhatihatiBemasBdendaBallBpatuhBcampurBoknumBnewBlulusBjariBjalurBcelakaBswastaBprediksiBpasukBletakBilegalBfitnahBdediB
syamsuddinBskemaBsisaBrombongB	mekanismeBdivisiBdetikB	cenderungBadministrasiByahyaBtidurBpsiBpadanBminimalBmalangBluncurBkulitBesBtestBsiangBsesatBmundurBmaBlonjakBkbriBhotelBbuluhBbasBasiaBsampelBnusaB	karantinaBbanjirBatBsungguhBstrukturBsdBpekanB	palestinaB
nilainilaiBnetizenBktpBbatalBabuB	terorismeBperwiraBnonBmakoBketatBkelapaB	gelombangB	alutsistaBwasBrafaleBpdiBmetroBmdBmasakBlistrikBkomunisBhasanBhabibieBfisikBendemiBwapresBspesimenBpotongBnadiaBliputB
komisionerBkimiaBdesakBstudiBsoloBshalatBsekjenBprotesBproteinBperkosaBormasBkaryawanBderiantoBalumniBtumpangBrezimBpnBnapasBlupaBkosongBkelilingBkarnoBinternetBsutowoBsemarangBraihBputraBmoeldokoBmeterBhujanBdialogBcuriB	berangkatBbenderaBasamBwajahBunjungBtiongkokBteknikBsituBreaksiBmitraBindividuBimporBfpiBcakupBasasiBtolBrentanB	perangkatBkeluhBbikinB	transaksiBtinjauBrekeningBplatformBlemparBindahBeditorBdinginB	australiaBtuangBserentakBputarBprestasiBmodernBkejarBjetBjarakBgiringBdraftBbelanjaBantiBwhisnuB	thresholdBtauBstuntingBrusaBrekomendasiBdebatBaduBsilahBnkriBmodusBkominfoBhitamBgantungBfadliBdllBbalihoBangelinaBzulkifliBtegaBtaraBsuamiBpresidentialBkebalBazanBakrabBadatB
temantemanBsiswaBsimBsaranaB	politikusBnamanamaBlampungBkemhanBcuitBcholilBustazBtsbB
tanggulangBsumbangBsuasanaBsolusiBseleksiBsandiagaBpedomanBorBlaguBkompleksBjkpBjangkaBhalhalBzatBwalkBpbnuBjermanBinsidenBdeltaBbeBayahBwajarBtunaiBtransportasiBraguBprosedurBpppBmutasiBmateriBkisahBkemenagBkarakterBhalamanBakbarBstandarBsitiBmusalaBkandidatBertiBumkmBponselBpatutBnonaktifBmengatasnamakanBjusufBbenciBauBsholatBrokokBrisetBpraktikBpnsBmenakerBliburBkeretaBdlmB
direktoratBtokoBtibatibaBtertibBtaatBskalaBsihBrapimBperutBmulutBmesinBhuniBscorpeneBsawahB	restitusiBmilenialBmakassarBkallaBkacaBcnnBteoriBrangkaiBpolitisBphkBolahragaBhasBfilmBdesainBbincangBbauBsultanBperseroBperihalBnotBmomentumBlampirBkristenBkontrakBkonsumenB	intelijenBhartaBacuBunoBtppuBprancisBparahBnasiBmiskinBinovasiBdeteksiBahyBungsiBtriBtitoBtanjungBsuhuBpascaBpalohBoperasionalBnonparlemenBkeppresBkendatiBjenazahBhebohBgiziBbendungBbansosBteknisBtekenB
sertifikatBnyawaBmenhanB	manajemenBlimbahBkopassusBkamarBhpBberkasBtransisiBtonBrateBnyamanBmakamBkedelaiBjatimBiurBhambatBdeputiBakalBwabahB
stabilitasBsakuBrikwantoBpabrikBlamarBkontroversiBdgByusrilBsungaiBsekretariatBsawitBregulasiBputriB
pihakpihakBpaketBkejutBhimpunBgasBcenterBayamBzamanByourBsimulasiBsimpangBseniorBprofilBperkasaBlurusBletjenBkabinetBideologiBhangatBemailBdotBabaiBraziaBrambutBlancarBlainlainB
kontribusiBkomandanBirakBeddyBbiroBbasukiBbanserBanalisisBwawasButangBtimbunBsubuhBprodusenBpolaBperilakuBpergiBpancingBmasBkampusBisisBgudangBcurigaBcabangBbongkarBtransformasiB	toleransiBtautB	tangerangBpeliharaBmusnahBlariBlabuhBhadiahBceramahBbmkgBauliaB
universityBummatBtelingaBspandukBributB	provokasiBpasamanBmoonB	institusiBhaveBhadBfikriBdutaBdickyBberhatihatiBakarBadiBtipikorBsmsB
signifikanBsahamBrahasiaBpromosiBnabiBlapasBkemluBbusBbpomBantigenBwnaBwillBwandyBrebutB	realisasiBmacetBlangkatBkritisBkewarganegaraanBjajahBeksporBculiBusBtetanggaBsenayanBpemkotBmncBmarahBlaboratoriumBitaliaBirjenBimbangBideBdetikcomBderajatBdaunBdadakBangkutBworldBthailandBtenangB
positivityBpeopleBoptimalBmurahBmatangBlandasBkuburBgeserBbnpbBbenerBaparaturBanginBanehBzonBwewenangBusirBtulangBtudingBsuspekBrusiaukrainaBprofesiBproBportalBpltBmigranB	konsistenB	identitasBhebatBgonggongBdetailBwebsiteBversiBusutBtowerBtoaBsusuBsondakhBpartaipartaiBpaduBmulyadiBlolosBjokowimarufB
integritasBinisialBinformatikaBindikasiBhinaBdelegasiByudoBupBpondokBntbBkusumaBkontraBkoleseBkiriBinstansiB
distribusiBburuBarifBtimeBsumbatBsubsidiBpohonBperancisBpaluBmukimBkontakBkomandoBkananBjlBinapBbpkBasasBtrumpBswabBsariBsalinBrizieqBpplnBpanitiaBorgBnadaBmaritimBmaduraBkalimatBixBiringBhasyimBgulaBdirutBcetakBbubarBbersamasamaBbengkuluBbayangBapbnBadabBtontonBtempuhBsepedaB	potensialB	nahdlatulBmarkasBlogoBlistyoBkantongBkaloBinpresBbakteriBasaBajiBtheyBtbkBsukabumiBsatusatunyaBposBmonsterBkoreaBkodeBjeratBhabibB	yudhoyonoBwisataBternakBstabilBsepenuhBputinBpurnamaBnikBmusuhBmedsosBkontrolBgeledahBdirjenBagenBvitaminButuhBtradisionalBstnkBsengketaBresearchBratarataBradikalBnurBmoralBlimpahBlampuBlakilakiBkapoldaBjemputBhalangBfluBcemarBasapBwahidBuiBtembusBsukarlanBseragamBprofesionalBperdanaBpahlawanBopiniB
manipulasiBliterBkrisisBinvestigasiBhamilBdolarBcerminBburungBbeberBawakBauditBwikuBtrukBtempoBtangguhBtampungBsuriahBsmrcBseruBresolusiBrekanBqoumasB	presidentBpopulerBpemberitahuanBnapiBlombokB
legislatifBkurunB	kurikulumBkrnBkonsolidasiBkombesBjejakBdukaBaniayaBtransferBsumutBpurnBpratiknoBpadangBmenluBmandiBmahalBlowongBfirBafrikaBterorBtemaBsusiloBsofyanBskenarioBsempurnaBpenyalahgunaanBoneBnikmatBmulyaniBmayorBlangkaBkmBkeliruBkakakBindeksBhtBditandatanganiBcurangBcanBbantahBarifinBalamatBturkiBsantriBsandiBpopulasiBlontarBgarisBdosenB
betulbetulBawanBustadzBtuntasBtatapBsyukurB
registrasiBpintarBmyanmarBmyBmuhadjirBmatahariBkkBkhalidBitongBinvasiBimplementasiBidentifikasiBhurufBelemenBcerdasBbbmB	amendemenB
alternatifB	akomodasiBakbpBwereB	translateBtajukBpasokBnasibBmuaraBminatBmentengBlinkBlelangBlambangBksalBkpBkorpsBkondusifBkitabBiteBerrorBdiabetesBdemoBcuacaBbursaBbarubaruBasiB	akumulasiBzakatBudahBtanggaBsmaBsenangBprasetyoBpemdaBpakatBoptimalisasiBmungutBlangkahlangkahBkecewaBiyaBhidayatBgaBdistrikBdelapanBbendaBbajuBuniBsyBsembilanBselidikBsatelitBresahBrektorBpemprovB	paripurnaBpagarBmirahBmadrasahBlangganBkawanBkapolresBjujurBjgnBinternationalBharyBgerobakBfakultasBbnnBbinsarBasuransiBantibodiBaktivisBswtBsusahBsuruhBsopirBrampungBplnBpkpuBoptionBmendagriBlandaBkatolikBkagetBjknBjarangBimigrasiBidulBgifBfirsdraftnewsorgBeksekusiBboikotBbodohBalexBviaBtkaBsetiaBremajaB	nurmantyoBnihBnatalBnafasB
musyawarahBmisiBmarginBletusBlegalBkpdB
kolaborasiBginjalBekoBdewasaBdakwahBbutBbuangBbinaryBbengkokBbatukBbalaiBaryaBvsBvisiB
verifikasiBtsunamiBsudutBsuciBsampahBnyanyiBmangBlecehBlajuBkuliahBkonvensiBkonstitusionalB
kerangkengBkanalBjurusBjembatanBjemaahB	inisiatifBiklimBgaduhBedisiBdemamBdarBcitraBcitemuBbocahBbigB	basalamahBtumorBtakbirBtabungBsdmBsapiBrumaniaBrelatifBpatahB	palembangBpaB
menkominfoBmadaniBkomponenB	komisarisBkolamBkhasBkesahBjuaraBjatiBitsB
helikopterBheBgilaB	friedrichBengganBektpBdurasiBduetBditjenBcitacitaBbojongBbekuBarusBwebinarBvolumeBtradisiBtamuBsyriacBoperatorBmomenBmodelBmerekBlpskBlingkarBlebaranB
kontestasiBkievBkesiapBfullBborBbeleidBbeenBansorBandalBalhamdulillahBzonaBskandalB
seharihariBrestoranBrebeccaBpuspomadBordeBnttBmenandatanganiBmalBjudiBjangkauBisraBhinduBgtB	gorontaloBfotofotoBekstremBdubesBcianjurBcermatBbosBartisBapaapaBabdurachmanByusufBtuaiBtilangBterapiBsuryaniBsoekarnoputriBsilaturahmiBsesalBseratBsenimanBsembunyiBpinjamBparkirBpanduBnationalBmaterialBmanadoBlipatBlemonBlapisB	laksamanaBkurmaBkriminalB
kompetensiB	komoditasBkgBjambiBistimewaB	interaksiBhapBdalihBcelanaBbppmiBbalasBayoBatletBanalisBakademikBafterB
transparanBsiksaBsematBsejatiBrutinBrudalBpujiBpolsekBotoritasBorganBnurhadiB
narapidanaBmusimBliarBkurniaBjkBfigurBbuzzerB	birokrasiBberBanamBalokasiBalmarhumBterjunBtandingBsuntiBsegarBrumusBrbBpuprBpaslonBpasBnajamBmarakBkreditBkkbBkanadaBjurnalisB
intervensiBinstanBhuluBagresiBabdullahBvietnamBtunggalBtiadaBterobosBsiagaBsawBsamasamaBrumorBrtBreyogBquranBpublicBpolhukamBpolandiaBpikachuBpakeBngBnenoBnatoBmejaBmayjenBmardaniBlangitBkianBkerahBkayuBkasBiqbalB
inmendagriBijazahBheranBgazaBfauziyahBdisinformasiBdisabilitasBdenBchandraBcawapresBcanggihBcakapBbatangBbahagiaBanwarBanutB
tokohtokohBtjahajaBtglBstopBserapB
presidensiBpltaBpinggirBphotoBperundangundanganBkisarBkaroBilmiahBhamdanBdonasiBdayBbungaBarsitekBweBtopikBtimesBteguhBtcmBsyariahBsheB
senantiasaBresesBrehabilitasiBpropertiBposoBponpesBpendekBpaserBoksigenBmotogpBmayaB
konsultasiB	ketimbangBindukBimunB
geopolitikBbiruBambangBadonaraBacakBugmBtulungagungBtelevisiBtebarBplastikBmitigasiBmarsudiB	magnitudoBkriBkecamB
hikmahantoBfatwaBcucuBbinatangBbangetByayasanBxiBwhenBvalidBsentuhBselisihBsatpolBsajiBprimerBpmB	narkotikaBmahaBlestariBlaksmaBkurungBkubuBjilidBjerumusBjemberBjalinBherryBhattaBdonorBdominasiBdinamikaBdapilBbawangBbangBassalamualaikumBanugerahBaliansiBadzanBumarBtegurB	supriyadiBsumpahBsterilBsptBsoBsinergiBsiakBsantunBresponBrealBprobolinggoBpostingBotomatisBmudahmudahanBmoreBmikroBkrpBkonserBkonengBkebunBkarierBjatengBidiBhermanBhasutBgemarBfitriB	diplomasiBcatBbentangBbappenasBadminBadikBziarahBwhichBtwoBtunggakBtetesBtajamBsimbolB
seolaholahBsaraBrsudBrppBremisiBregionalB
propagandaBppuBpetinggiBnenekBmulyoBlabelB
kpubawasluBivBhmiBgibranBdurBdevelopmentB
departemenB
demokratisBbarengBariBwagBwadahBuinBtukarBtracingBsudirmanBsiberBsewaBsamplingBsalembaBpustakaB
peperanganBpedulilindungiBotonomiB
mempostingBmartinusBlayangBkonsentrasiBkesumaB	kemenakerBkaBisuisuBisoterB	integrasiBinsyaBdukcapilBcopotBciumBcalegBbingungBbekalBasosiasiBwebBwarganetBvariasiBupahBtimpaBtaruhBtanoesoedibjoBsmpB
smartphoneB	sindonewsBsindirBsekianBsandangBrspadBretasBpratamaBperbanB	ombudsmanBnagaBmieBlikeBlgbtBlantaiBlambungBkristiyantoBkostradB
konstruksiBkerumunBjebakB	imunisasiBiklanBifBhtiBhivBeratBcuplikBbudimanBbudakBbuBbasisBbangkaBampunBwirawanBuraiBtelurBsubsiderBsempitBrisiBrembangBrekayasaBredaksiBrebusBpmkBpantaiBnutrisiBnistaBnasihatBmuseumBmesjidBmenpanBmanagerBmakmurBmadiunBlongsorBkarnaBidealBgpBdiyBdinkesBdatadataBcoronavirusBcadangBbawonoBbarisBanjurBamalBwahyuBterimakasihBsyiahBsuntingBstokBsinyalBsetorBrandomBpressBpramonoBperlahanB	peringkatB
optimistisBnampakBmentalBmarsBlampauB	kilometerBkiaiBkhilafahBkeringB
kawankawanBkamharBkabulBkabareskrimBjejaringBhuntersBhumanBgamelanBfaldoBdoniBdoBdalangBciriBbodyBberturutturutB	bendaharaBbalitaBbahuriBbadaiBarsipBaboutByasonnaBunjukBuapBtundukBtransBspBsaifulBriwayatBrentangB
ratifikasiB	puskesmasBpuasaBpetisiBpersepsiBpbBpanjaBpangkalBotherBnowBnormaBmineralBmiftahBmeutyaBmayatBlumpurBkulturBksauBkerabatBkejamBkeceBkatanyabacaBjplBhutangBgulirBgituBgerbangBfiturBfbBenergyBedyBdptBdownBderetBculikB	cambridgeBbpnBbotolBbjBbennyBbalegBadamBwarisBwahyudinBtuanBtegalBtarunaBtariBsyiarBsimakBsetyoBsembakoBsedihBresikoB	purworejoBprihatinBporsiBpomBparuparuBourBnyalaBmonitorBmeniBmegaB	mandalikaBlemakBkolonelBjerukB	instituteBilhamBhrsBguncangBgayaBgandengBgamesB	febrylianBembanBdimBdianBcernaBbetapaBbemBariefBaamiinBusdBumrahBtkiBthereBtheirBtehBsusupBsolidaritasBselselBscBsabarBrrcBrelevanBraharjaB	publishedBmuliaBmohammadBmirajBmbakB	kompetisiBkemenkumhamBjusticeBjumpaBjendelaBjebolBimanBidapBheriBgotongBgaliBfeeBdominanBdahsyatB
consultingBcacatBbillBasepB	amandemenBalsoByerryBtrendingBtpB	tenggorokBteksBtegangBtaufiqB
sistematisBseretBselundupBroyongBricuhBpuputBpropertindoBprokesBprofesorBpppaBpemkabB
pariwisataBoposisiBnasutionBnaskahBmustafaBmusliminBmusikBminimBmenkesBlukalukaBlogistikBlembarBlebarBkudaBkesBkasasiB	karnavianBjpuBiranBhealthBgelapBenimBcontentBbungkusBbumbuBbrodjonegoroBbreakingBbiBbesiBbelitungB	afiliatorBythByorkB	wikipediaBsuperBsmartBsinovacBshowBsertifikasiBsegenapBrohingyaBredaBrasBradikalismeBpowerBpilarBpdBpanigoroB	orientasiBnovantoBnintendoBnasabahBmiringBmagelangBlsiBlionBliftBlifeBkuningBkualifikasiBkomiteBkawinBkauBkaltimBinvestorBhimneBhendroB	harimurtiB	handphoneBgeramBgatesBenglishBemilBdassaultB	chemtrailBakuisisiBainunBabdiBwamenkumhamBtipsBteraBtempocoBtanBsmkBsibukBsesakBsecurityB
screenshotBsahroniBpersisBpamerBmurniB	mobilitasBmmiBmassalBlanyallaBkspiBketemuBkemalBkarawangBkadrunBkadangBjudhaBjajanBhermawanBhakhakBgusurBgaragaraBfitBecekBdwiBdinBcederaBbangsabangsaBbakuB	analyticaB
akselerasiBagrariaBachmadBwuhanBwbBtumpuBtukangBtempelBtarmiziB	spesialisBsilamBsetyaB	sembarangBrukunBrincianBrikaBragamBproporsionalBpraperadilanBprBpmiBpenmasBpanikBmotivasiBminBmenuBmasifBmarsekalBmarBmallBkodamBklienBkandangBkabBjilbabBjihadBintensifBimunitasBhisBhirupBharisBferryBfcBedwardBeditBdonaldBdennyBdeBchannelBceoBcantikBbolaBasumsiBasistenBaqilByaaBwrB	wisatawanBwijayaBviiiBtitiBteukuBtebalBtasikmalayaBtambakBtafsirBsteelBstateBspanyolBsinarBsetanBsendokBsarafBrobinBreporterBrampokBpkBpiketBpianisB
perspektifBpekB
pandjaitanBorbitBonlyBmobileBminahasaBmesirBmentahBlenganBlacakBkolomBkokohBkoarmadaBklinisBkharkivBkhairulBkendalaBkenanBkementerianlembagaBkakuBjunjungBjubirBjtBirB
insyaallahBinfB
independenBilmuwanBibuibuBhilirBhiburB
governmentBefisienBduitBdombaBdisebutsebutBdiseaseBdanauBctoBcandiBbubbleBbingkaiBbimbingBberhalaBberbedabedaBberasBbantaiBbandaBamanahByooryB
westerlingBsystemBsuryoB	substansiBslametBsimanjuntakBselulerB
rinciannyaB	rekrutmenB
rekanrekanBredBrapidBradioBpropamBorangtuaBolesB
obatobatanBnusronBmouBmenindaklanjutiBmayBmanisBmaduBleherB	kronologiBkppsBjayapuraBhiasBhektareBharlahB	halmaheraBgetarBekorBedukasiBdollarBdemonstrasiBdadaBcoklatBburhanuddinBbetawiBbesarbesaranBbengkakBbenahBbelakaBasaiBapbdBangkasaBvisaBususBupacaraBtiruBterminalBtempeBstudiesBstasiunBspesifikBshihabBsetnovBsegiBschoolBrodaBrayapBranahBrajinBpopularitasBpisangBpilotBpetaB	pekanbaruBnikahBmitosBmantapBmakhlukBlogamB
likuifaksiBlgBleonardB
legitimasiBlabBkritisiBkomjenBkilogramBkertasB	kerjasamaBkemendikbudBkelakBkangkungBjohnBjgBjdBinkonstitusionalBhalusBgembiraBgelasBganjaBgandaBdokBdindingB	cilangkapBcallBbutirBbusukBbudidayaBbonusBbettyBazharBatrbpnB	akademisiBajangBzohriBwismaBwalikotaBuseBtribunnewscomBtipisBthBtepungBtempattempatBtatananBtarungBtagarBsulutBsocialBsinyalirBsepiBrotiBrkBrezaBreactionBraisBpetirBpesisirBpenandatangananBpelukBpasporB	parameterBpangdamBpakanBopsiBnoorB	nonpartaiBnerakaBnelayanBmuridBmuBmrB	molekulerB	mojokertoB	minoritasBmemoriBmadamBligaBlbhBlaB	kumulatifBkonsekuensiBkirakiraBketapangBkabidBkabahBjusBjenjangBjabodetabekBinisiasiBinformationBindopolBimbasBherBfundamentalBformatBfadjarBeyeB	elektoralB	efisiensiBdefinisiBdaerahdaerahBcyberBcopyBcomBbukitBblackBbhayangkaraBbabinsaBarsulBarmyBantikorupsiBangolaBabadiBturnamenBtitipBterjangBteriakB	surakartaBsundaBstepanusBsopBsentimenBselarasBsekiraBsalehBsaanBrevolusiBreuniBproperBpotretBpocketBpestaBpareBpangeranBpadatBoverBorderBnyepiBnuklirBmusibahBmotifBlorengBlingkupBlanudBkreatifBkoruptorBkonkretBkolektifBkedokBkawalBjustBinstitutBhutBhimbauanBhashtagBhackerBfreeBfreddyBfahriBdpwBdosaBditindaklanjutiBdayakBcctvBcareB	broadcastBbnptBbisingBbijiBbenturB
banyuwangiBbaktiBatrBargoBanyarBafpBaamBwfoBunitedBturisBtumiyanaBtradingBtindasBthomasBtamanBsukarelaBsolidBskBserdangBserbuBseeBrundingBriniBremehBrekrutB	rawalumbuBradenBpungutBpersegiBpermanenBpeluruBpatroliBofficeBnetworkBmimpiB
merdekacomBmekarBmafiaBmadeBliberalismeBletnanBlelahBlandaiB	korporasiBklikBkasiBkartunBkagumB	istirahatBispaBipdnBinewsBijinBheadBharuBgontorBglobalisasiBgalangBgafurBfaseB	faizasyahBesaBduringBdomestikBdireksiBdeliB	corporateBcocokB
charmanderBbrasilBbkkbnBbatinBbandarB
balikpapanBawardBangieBakutBaiditBadaptifByearsBwoBwhatBwarungB	uninstallBujangBtkBtimorBtikusBthemBthamrinBtauhidBsuplaiBsoemitroBsoekarnohattaB
simpatisanBsearchBsalmananBsalmanBrudyBrangBramadanBpuraB
psikologisBprodukprodukBpajangBoligarkiBobjekBmewahBmeteorologiBlinimasaBkukarBkibarBkeriBkemudiBkemenhanBkayakBkatakataBkaosBkambingBkalengBjumhanaBjombangB
intensitasBidentikBhouseBgencarBgarutBfinalBetnisBetikBdiskriminasiBdisalahgunakanB	dipostingBcoblosBchainBbusyraBbriBboarBbedBazraBatmBantonBanekaBanasBadopsiBadaptasiBabadByesusB
washingtonBvladimirBumamBuasB	transmisiBtpsBtiangBthanBtangBtaiwanBtagihBsurveyB
sukamiskinBsubconjunctivalB	statementBsomadBrismahariniBrekorBrakerBproyeksiB
polymeraseBpiagamB
persentaseBpatungBpanggungBpanenBpamanBopinionBnoteBnatunaBmunjulBmeraukeB	mensesnegB
menghimbauBlutfiBlarutBkualaB
kontraktorBkonsulatBkenangB
kemkominfoBkelenjarBkaburBjlnBjemaatBhowBhairBgilirBgenggamBgenetikBformulaBfaisalB	eksternalBdkkBdiphkBdaBcheckBcatutBbuntutBbiakBbegalBbasriBbaikbaikBbackB	azyumardiBasetasetBasesmenB
aniessandiB	alexanderBakademiBabdurrahmanByaniB	universalBtheseBtbcBtankBtakeBsusBsulselB
strukturalBspeakerBsissokoB
sematamataBselangBsayurBsaifudinBsaBritelBrebakBrantaiB
purwakartaBpribumiBpolicyBperataBpepayaBpbiBnolBnodaBndugaBmunduBmonyetBmoderatBmandatBlongBlirikBlekatBlaskarBlagilagiBkueBkotakBkoreksiB
konspirasiBkomputerB
kompensasiBkompakBklasterBkilledBkilasBkhianatBkesanB
kemoterapiBkafirBjatisampurnaB
influencerB
indonesianB	ilustrasiB
hemorrhageBgiriBgemaBgadisBfirmanBdimensiBdihimbauB	detiknewsBcmBchappyB	bilateralBbentrokBbatamBazwarBasuhBasramaBarmadaBaqshaBapbdesBandroidBalhasilBafghanistanBwillyBusmanBunikBulasBuiiiB
twitternyaBtpgBtombolBtjahjoBthnBtalibBtahirBsumbarB
suarasuaraB	strategicBsodaBskrgBsiswiBsgpBserviceBseriBsemenBsebentarBsamBroyBresepB
reproduksiBrepresentasiBrelasiBrampasBprayitnoBpraktisBporosBperasB	penasaranB
paspampresBparuBnotaBmanuverBmainmainBmadaBluqmanBlogikaBkupangBkrakatauBkoperasiBkippB
kerjakerjaBkerangkaBkafeBjurnalBjcoBjamanBintoBinflasiBhidungBgkBginBgampangBforceBexitBdodiBdavidBdapurBcutiBcopasBcacingB	bijaksanaBberkalikaliBbasahBapelBanalogiBaktorBzulhasBzudanByearBybsBwafatButusB
upayaupayaBtuhBtraumaBtopicBtepiBtarifBsutopoBsrgBspesifikasiBsomeBsobatBskckBsintasB
singkawangBserverBsembariBsekutuBsbgBsamudraBsamuderaBrubahBrscmBrockyBrinciBrestuBregionB
rasulullahBradiasiBpupukBptunBpttBprogramprogramBpremiumBpilgubBpennyBparasetamolBpanggangBorganizationBohBoffBnylonBnurulBnuraniBngomongBnasirBnaliBmiyonoBmichaelBmgBmesBmemeBmelayuBmartabatBmarlboroBmargonoBlembutBlawBlapB	kumandangBknpiBknowBkencangBkainB
kaderkaderBjeraBiwanBipoB	influenzaBijoBgunawanBgejolakBganeshaBfrontBfreeportBetikaBdzikirBbutaB	bucharestBbpbdBborongBbodongBbloodBbiologisBbetweenBberitaberitaBbekaBbaharB	akuntabelBafiliasiBwaketumBtrubusBtribunBtopBtimpangBtgbBteladanB
technologyBtagakB	syafrizalBsultengBsuburBstaffBsovietBsintetisBsesiBsepakBseksiBscanBsbbBsayapBsabuBregulerBreBratikBrahimBragaBputingBppatkBpollingB	politicalBpersonalBperanginanginBpekaBpasuruanBotonomBomBofficialB	negosiasiBmusB
multistageBmrnaBmonasBmmBmenkeuBmediumBmeBmarkBmanjurBmakiBmakhfudBlunasBliatBlhoBkutukBkunoBkrusialBkramatBkoranBkodimBkemenkoBkasihanBkarangBkalongBjulukBjuhandaBismailB	intoleranBihwalBhudaBhbBhanifBgoodBghufronB	geografisBgedeB
forwardingBforcesBfavoritBfatalBfarmasiBellyBelektabilitasnyaBeksploitasiB
eksistensiBdnBdifteriBdetikfinanceBdajjalBdailyBcuatBcpnsBcaprescawapresBbrigadirBblitarBbiusBbioskopBbeliungBbedahBbbcBbasarnasBbapakibuBbanjarBbahlilBatensiBargumenBanyBanggurBamarBakmilBagainstBadvokasiBylbhiBviralkanBviBvaccineB	tuturoongBtransparansiBthenB	terkadangBtawaBtangkalBtahanaBsusantoBsurgaBsunanBspiritBsoyuB
sosialismeBsharingBsetiawanB
seringkaliBserbaBselatankabupatenBroketBridhoBriahBreviewBptmBpriokB	primedikaBpramukaBpraktekBprabowosandiBppiBposkoBpoliceBpecatBparisBpaniteraBpalBpageB	organismeB	nonmuslimBniBnaraBnajisBmuzaniBmumpuniBmulusBmultikulturalismeBmemberitahukanBmedicalBmasterBmarketBmamaBmahendraBmadyaBlumpuhBlollyBlockdownBlippoBlaparBkoronaBkongBkompolBkenBkemendikbudristekBkangBjudicialBjasadBjahitBipkBinovatifBikhlasBibukotaBhuseinBhematBhelatBhektarBgramBgigitBgenjotBgarapB
fungsionalBfollowB	finlandiaBferiBfebBfalseBdokumentasiBdinaBdewaBdenpasarBdaysBcurahBciriciriBcahayaBbusinessBbuddhaBbrazilBbobbyBbintaraBberkatBbeaBazizBaseanBantreBakuratBakpBakhlakB
akhirakhirBabbasBaaByuliantoBvanBtrustBtransjakartaBtokyoB
tipideksusBtestingBtenggerBtengahtengahBtelukBtasB
tandatandaBtamparBsurutBsubangBstikerBstakeholderBspinBsirkuitBsingkirBsilumanBshubuhBshopeeBsepatuBselatB	sejarawanBseganBsarjanaBsaldoBsafeBrumputBrtmBrenovasiBrendamBrealitasBrasionalBramahB
proklamasiB
prevalensiB	prasaranaBpklBperdataB
paramadinaBpapanBpakistanBoptimisBnugrohoBnuansaBnaharBmostBmorowaliBmiftahulBmerakBmataramBmarsmaBmanamanaBmanBmaklumBmakeBmakarBlorongBlogisBliurBlelakiBkyaiBkuBkontenkontenBkongresBkompetenBklubBkhofifahBketidakpastianBkesalahpahamanBkehatihatianBkameraBkadangkadangBjumaliBjangkitBjanggalBjanBjalarBirvanBiosB	inspekturBimagesBikaBhologramBhiariejBharmonisBhallBhaidBhadarBgugusBgimanaBgetBgempurBgembokBgaungBformalBfilsafatBfestivalBfederalB	fatalitasBengkauBedwinBebenBdroneBdjarotBdirectorBdibudidayakanB
demonstranBdeathBdanpuspomadBcrazyBcnnindonesiacomBchipBcalledBburonBbristlesBbonekaBbknBbeasiswaBbambuBbajaBayomBasyariBandyBamukBamranBallahuBalihalihBajudanBulahBtumpasBtipeBsyariatBsutisnaBsupermarketBsumedangBstaqufBstafsusB	spekulasiB	sirkulasiBsipirBsidoarjoBsesarBsenyumBsendBsemestaBsaulihunBsampeBsalimBsalatigaBsafrizalBrwBrinaBrichBrelaBrekonsiliasiBrangkumBrangkapB
ramairamaiBpusingBpureBptfiBproviderB	produktifBprocessBponBpipaBpetiBpertanggungjawabanBperludemBpatokBpasifikB	panjaitanBpangkostradBpampangBotopsiBorasiBnyeriBnextBnaBmutuBmufakatBminimumBmiBmesanBmerkBmaskapaiBmasamasaBmaksimumBlugasBlsnBlonggarBliveBlhkpnBlebakBlaiBkutaBkuotaBkukuhBkoronerBkontaminasiB
konstituenBkomprehensifBkolorBklimatologiBkistaBkhanBkeroyokBkemenkeuBkapolsekBkancahBkalenderBjournalBjorokBjinpingBjiexpoB	instrumenBinnalillahiBinklusifBimgBhonorBheruBhartonoBharmoniBhanuraBhakikatBgarbageBfundBformalinBfilosofiBfileBfahmiBeventBendBemosiB	emergencyBemangB	ekosistemBeffendyBefektivitasBdudyBdrafBdirtipideksusBdahBcvBcommandBcdcBcaracaraBcanadaBbukittinggiBbrushBbniBbitungBbersihbersihB
bendabendaBbeingBbeforeBbecauseBbalokBatletikBarBalzakiBaltBajaibBadeBadbBaceByordaniaBworkingBwismoyoBwidjojoBwarningB
wardanimanBwamenaBviewBuntaBtweetB	treatmentBtingBtiBtertawaBterampilB	tantrianaBtangselBtampikBsupportB	statistikBstadionBsjsnBsizesmaxwidthBsitompulBsiloamBsetBsentrisBseminarBselaselaBsegmenBseganiBsedotBsantosoBsamarBsaddamBruteBreutersB	resourcesBresorBrctiBratnaBradangBpulsaBpromoBprofitBprakerjaBpingsanBpendayagunaanBpelatBpausBpasirB	paradigmaBpanwasluBopenBojkBobjektifBnumberBnovelBnontonBnipisBnilonB	nahdliyinBnadiemBmujaniBmetaBmeetingBmedicineB	margaritoBmarchBmansurB	manokwariB
mainstreamBmahBmagicBmadinahB
macammacamBlukmanBluhurBlubangBlppomBlintangBlaolyBlamonganBlagaB	komposisiBkillingBketikBkencingB	kemenporaBkecBkarirBkarakteristikBkakekBjunctoBjendralBjandaBisomanBirisBintelBinnaBinjakBinfusBindroBindosatBilagaBijukBhibahBhamzahBhalimBgumpalBguardianBgreenBgeneralBeggiBduterteBdomisiliBdoktrinBdoktorBdipertanggungjawabkanBdiktatorBdewiBdesignBdekadeBdefisitBdebuBdanjenBcommunicationBcokelatBcentreBcecerB
californiaBcaBbruneiBbrandBbpsBbertahuntahunB
barangkaliBanalisaBamienBamericanBambonBalexisBalaB
akreditasiBaccountBzinaBzalimByahBworkBusikBumpamaBukirBtotokBtoldBtepukB	telkomselBtelakBtabanBswissBsumsumBsubhanallahBstigmaBsouthBsorongB	soedirmanBsitungBseramBsenjangBsemprotBsaktiBsaipulBsadikinBrokBrizalBritualBrioBreserseBrepublikacoidBredamBrecoveryBrapiBrangkulB
radioaktifBptkpBpremanB	pneumoniaBplenoBpleaseBplanBpilekBpijakBpidieBpelitaBpattujuB	paguyubanBototBongkosBofficerBoctoberBobesitasBobamaBnetralBnetBnavalBnasionalismeBnameBmultilateralBmisBmigrasiBmarvesBmarinirBmanyBmajalahBlvivBlukisBlucuBloveBliterasiBliteBlineBleukimiaBletkolB	legislasiBleaderBlanjurBkumparBkumanB
kooperatifBkontroversialBkoneksiB	komunismeB	komersialBklinikBklhkBkerucutBkeongBkentalBkaptenBkacangBkabelBjonruBitbBisyaBintaiBicwBhikmahBhaulBgunadiBgrandBgenBfuiBfregatBfoundBfarmaBfamilyBediB	dwikoritaBdrastisBdongkrakBdnaBdisebarluaskanB
dirgantaraBdenmarkBcukaBcrimeB	chernobylBcapBbumdBbertanggungjawabBberitahuBbendgateBbaratkabupatenBbantingBbabakBawetBaturanaturanBaritBarafB
antibiotikBambisiBamB	alhidayahBakunakunBwibowoBwhileBwayBwarismanBwakafBvitalBusaBuninstalltravelokaBtsauriBtragediBtommyBternaBteokrasiBtelegramBtelaahBteamBtarawihBtanggungjawabBtalentaBtakarBtaipurBsydneyBsyahidBswitchBsuryadiBsurpresBsungguhsungguhBsumenepBsumedanaBsumatraBsuluhBsukamtaBsudjanaBstBspermaBsopanBsmknB	singaporeBsiaBsetopBseraBseparatismeBsekdaBsanggupBsandingBrusunBrudiBrojiunBrhBradarBproteksiBppkBpolitikaBpistolBpfizerB	pertaliteBpenjuruBpatogenBpangiBpalapaBpadamBotoriterBnurbayaBniscayaBnakesBmogokBmoertopoBmilitaryB	menkumhamBmbahBmajemukBmagnetBlompatBlightBlazimBkrisnaBkredibelB	konsultanBkonsistensiBkononBkkpBkhoirulBkhasiatBkhalifahBkelompokkelompokB
kasuskasusBkajatiB	jiwasrayaBjeritBjazilulBistanbulBinstagramnyaB	inspirasiBinsentifBiainBhutamaBhurairahBhomeBhelmyBharrisBhantamBgugurB	guatemalaBgoyangBgojekBginaBgeloraBgegerBfoodBfiktifBfauziBepidemiologBdomainBdiklatBdidiB
departmentBdakBcontrolBcomstockB	cimanggisBchiefBcemasBbuwonoBbutonBbuiBberdarahdarahBbajakBbabyBaviationBaugustBatmosferBasinBampuhBalkoholBadiesBadiatmaBadakanBacByogaBwholeBwaterBwantBvictimButarakabupatenBurgensiBuratBunguBularBubiBtukulBtrusBtopangBtenderBtembokBtelBtekadBtebusBtaliBsuporterBsumiratBsongoBslotBsisirB	sinopharmBsilabanBsidakBsharedBserialBsepeleBsemiB
selebritasBseaBsaudarasaudaraBsapuBsahliBsadapBrontaBrintisBringBriilBrfidBrantauBramliBpurnawirawanBptspBprosesiB	prolegnasBprogresBpresedenBprabuBposeBpolrestaB
politisasiBpkpBpinBpigBpersonilBpermataBperakBpencapresanBpelosokBotmiltiBoryzaBorwellBnojengBniiBniasBngototBnggaBnegriBnanasBmurtadBmodernisasiB
mobilisasiBmkgrBminusBmigasBmhBmerryBmeresponBmekBmbaBmatraBmanegerBmanajerBmalasBmalakaBmahmudBlondonBlombaBlengahBlemhanasB
legislatorBlatinBlastBkyivBkronisBkotakotaB	kombinasiB
kolesterolBkhalayakBkemenkominfoBkejiBkecoaB	kalkulasiBkaidahBkahBkadesBjordanBjohanBjamurBisoBintelektualBincarBimmunityBimageBikhwanBikBidrisBidhamBidfBhkbpBhidayatullahBherdBherbalBhendraBhartoBharmonisasiBhamengkuBhaikalBhabitatBhaBgresikBgerungB	geofisikaBgenderBgenapBgadgetBfriendsBformulirBformasiBforestBfahiraBentitasBemisiBejekBdsbBdoubleBdoorBdompetBditBdidBcukaiBchineseBchildrenBcaptionBcancerBbujurBborderBbodiBblmBbertanyatanyaBberontakBbekerjasamaBbayuBbasaBbarusanBautisBarmedBaquaBandreasBalatalatBadangBabarBzaBveryBustBusedBunderBtumpukBtumpahBtomatBtodayBtirtoBtendaBtemenBtelekomunikasiBtaufiqulhadiBtaufanBtandukBtamatBtaBsyekhB
syafruddinBsumselBsuharsoBsubjekBsubditBstudyBstreetBspesiesBspeakingBsontakBsocietyBsimpatiBsertuB	separatisBsensitifBsengsaraBsejajarBsedekahBsantaiBsamsulB	samarindaBsaljuBrsalBrobertBrismaBrayuBraksasaBraBpusakoB	psikologiBpsikisB	protestanBproblemBpjBpinangB	philipinaBpesatBpesBperppuBperinciBpelintirBotgBoganBodessaBndakBmutlakB
musyawaratBmustahilBmsgBmpiBmohmahfudmdBmisterBmilyarB	metaverseBmerkuriB
mengadaadaBmelonBmelitusBmaskurBmasdukiBmaruliB
marahmarahBlunakBlieBlicikBlhkBlengserBlebanonBlaukBlabuBkurBkuninganBkulturalBkudusBktaBkruBkristusB
kotamobaguBkoramilBkhaliqBkencanaBkejatBkatalogBkasatBkartikaBkarimBkamparBkadivBkadalBjuneBjasBjaninBjamesB
jalanjalanBisyaratBirdamBinterpolB	indrawatiBihsanBicuB
ichthyosisBhospitalBhjBhindiaBhidayahBharunBhambaBhalaqahBhajarBhaikouBgowaBganjilB	financialBezerBeveryBevenBevaBesportsBesportBekaBdriBdpcBdivBditaBdinamisBdigitBdhaniBdesBderasBdengueB	democracyBdefenseBdeadBdanteB	compactorBcollegeBcitaBboxBbimaBbentengBbatalyonBbaringBbarangbarangBbanyumasBbangkrutBavipBatributBarenaBanisBandriBamrilBamnestiB	alumuniumBairbusBaidsBadrianB
adisasmitoBadeganBactionBzealandBzainalByukBwiwiekBwawanBviceBustadBurinBukhuwahBtvoneB
tugastugasBtravelBtkpBtirtaBtionghoaBtimurkabupatenBthreeBterusmenerusBtengkuB	tenggelamBtenggatBtelatBtapBtangisBtandjungBtabrakBsyarifBsulaimanB
suharyantoB	subvarianB
substantifBstoryBstandardBspamBsombongB	soliditasBskadronBsiregarBsiradjBsiasiaBshafBsentralBsembahBseliwerBseberangB
seakanakanBsatBsaratogaBsampleBsalonBrohaniBriyadiBrightsBrecruitmentBreallyBrazanBrachmanBpunggungBpuisiBprospekBprogesterexBpriatnaBprabayarBposterB	pontianakB
pluralismeBplanetBpkhBphoneBphBpersonBperdaBpatenB
pasalpasalB	parsadaanBparigiBpangandaranBpanciBpahitBpacuBorganikBnugrahaBnorwegiaBnominalB
narasumberBnajibBnafBmudikBmoneterBmochtarBmetalBmessageBmenporaBmeikartaBmaulanaBmarsdaBmargaBmanahBlpB	lokomotifBliniBlidahBlantamalBlangBlalaiBlaksdaBkupasBkumurBkumoloBkonvensionalBkontraproduktifBkonjenBklasifikasiBkiprahBketutBkemangBkasarB
karsinogenBkarbonBkapuspenkumBkairulBkaiBjuriBjkwBjenggotBjempolB
jelasjelasB
jawaposcomBjatahBjatBjanganjanganBjajakBjaberBisnawaBirwanBirfanB
investmentBintensBinsanBingkarB	implikasiBikhtiarBihzaBhistorisBhijriahBhelmBgunturBgratifikasiBgratiBgifsBgerebekBgeraiBgebrakBgaulBgajahBetBembusBelB	eksklusifBecoBdprmprBdontBdjayadiBdjalilBdigitalisasiBdietBdiareBdhuafaB	demografiBdekamBdcBdannyBdahlanBcontrailBcompanyB
caloncalonBbunyaminBbungkamBbrevetBboeingBblogBbibitBbiadabBbeningBbelasBbbrpBbatikBbaskomBbaraBbahuBbahriBawamBasupanBantusiasB
antirasuahBanjaBangB	andriantoBanaBampasBamirilBalumnusB	aktifitasBakhiratBaircraftBadukBadhaBadapulaBabriBabrahamBabangBzoomByunusBwisnuBwirantoBwidodomarufBwhereBwasistoBwallahuBwallBvolcanoBvisumBukmBtuntunBtoiletB	terroristBterphkBtergesagesaBtengokBtawanB
tahuntahunBsyahrulBsweepingB
swasembadaBsutrisnoBsutantoB	susantonoBsumbaBstrainBstikomBstadiumBsolokBsmasmkBsmBskriningBsindikatBshotB	sepakbolaBsenyawaBsenapanBseksamaBsdnB	sayembaraBsastraBsarungBsaratBsantosaBsambarBsambangBsalmonBsalibBsabyanBsabangBrumitBruasBromoBrokhminBriaBrezekiBrevitalisasiBreportBrenungBremBrefleksiBrayatriBrapBrajawaliBquoBqingwenBqatarBprinsipprinsipB
prerogatifBpremisB	prambananBprakarsaBpraBpositiveBpompaBpomantoB
polarisasiBplatBpisauBpikaB
pesanpesanBperumBpergolaBpeloporBpelangiBpayungBpasundanBpaskahBpasifBpasiBothersBneedBnbBnasehatBnangBnafsuBmutiBmuteBmuntahBmoskowB
misleadingBmirnaBmindBmildBmikroorganismeBmenyalahgunakanBmenaraBmekengBmarxBmanjaBmamBmalikBmalariaBlumayanBluBlianhuaBlhBlembagalembagaBleluasaBlapakBlantunBkursB	kulonuwunBkukuBkonyolBkonstitusionalismeBkonfederasiBkompastvBkompasidBkolakaBkoBkicauBkeringatBkerenB
keraskerasBkepriBkendalB	kemenpppaBkartanegaraBkapitalismeB	kapitalisBkalsiumBkabagBjenuhBjarahBjamilBjackBiraBintervalBinspektoratBinfrastructureB
industrialBinciBidBhusainBhettyBhermantoBhassanBhamidBhafidBgundulBgramediaBgotBgolfBgerhanaBgenangBganasBfosforB
forkopimdaBfisipBfireB
filadelfiaB	ferdinandBfakeBfajarBfahamBfadlizonBesokBesensiBepsilonBepidemiB	energindoBelektronikaBekstrakBehacBeffectBeconomyBdikotomiB	deskripsiBdesibelBderiBdedikasiBdangkalBcustomerBcumanBcostBcontactBcolaBcodeBcivilBcipinangBciliwungBcikiniBchromeBchartaBcabeBbykBburuburuBbookBbkpmBbiologiBbintanBbilibiliBbibirBberkahBbelokBbatubaraBbarcodeBbangkangBbandangBbagjaBarwaniBaroundBapolloB	apartemenBanshorBanotherBaniBandilBandesitBandaiBamunisiB	aluminiumBaloysiusBalizaBalipayBaktaBahadBahBagoBafricanBafricaB	afifuddinBzionisByunartoByuanByesBwithinBwingBwikaBwhistleBvipnyaBvelixBusepBummBtukasBttgBtransmigrasiBtorehBtonyBtonjolBtirtoidBtindihBthroughBthawafBtexasBterpaB
teritorialBtemantemannyaBteknisiBtebetBtebakB	tawalujanBtalentsBtaktisBtakdirBtaburBswiftBsusenoBspeechBsongsongBsoemarnoBsmithB	simposiumBsheikhBsemesterBsekolahsekolahB	secretaryBscienceBsaronggeBsadisBsabutBrusliBrsuiBrockBrobohBroadmapB	rivalitasBrepotB	relaksasiB	referenceBrdpBraupBrantingBrangkakBrakitBpuspomBpssiB
provokatifBproporsiBproklamatorBprivasiBprimeBpolusiB
politeknikBpinealBphotosBpgriBpetangBperusahaanperusahaanBpergubBpdamBpatimbanB
pasarpasarBparuhBpartBparagisBparacetamolBpansusBpalangBpaktaB	pagelaranB
orkestrasiB	optimismeBomarBokokBojekB	occupancyBnyomanBnyapresBnyaliBnobatBmujahidBmsBmrkBmilitanBmfbBmertaBmemberBmasudBmaslahatBmasakanB
maretaprilBmarbunB
manufakturBmangkrakBmalingBmakarimBmabesalBlpkpkBlpeiBlohBlocalBlesatBlatahBlalinBkspsiBkorelasiBkonversiBkontributorBkolegaBkloBketatanegaraanBkeruhBkepungBkendariBkekarBkegiatankegiatanBkedaluwarsaBkebijakankebijakanBkasionoB	kamuflaseBkaliberBjualbeliBjijikBjessicaBjengukBjeannieB	jampidsusBjajaBjagoBisnurBirlandiaB	indramayuBimBilaihiBiceBiaafBhubBhormonBhonorerBhobiBherwynBhendriB	harlequinBharahapBhanzonBhangusBhafalBhadistBhabiburokhmanBguysBguardBgrasiBgolBgesekBgebyarBgapBgadaiBfuadBfishBfinisBfilterBfalsafahBfactBfacebooknyaB	extensionBexpressBexBeruptionBerlanggaBerdoganBendapBeachBdoraBdkBdjokoBdishareBdigadanggadangBdetikhealthBdengBdendamBdbBdapetBcountryBcornellBchuB	chernihivBcetusBcenturyBcanangBcahyonoBbulelengBbulatBbujukBbubukBbsBbroBboyaminB	borobudurBbopBboneBblowerBblnBbleedingBblastBbitBbiografiBbidanBbersinBbeniBbeijingBbbpomBbaseBbaritoB
bangladeshBbandBazabBautismeBaudiensiBasahB
arsitekturBarmanBargumentasiB	argentinaBanungBankBangsurBamirBamazonBalfamartBadministratifBadhiBzumiBzolaByudhaB	wijayantoBwibisonoBwibawaBwellBwatchBwasekjenBwagubBwadasmelawanBvivacoidBvisualBvisitBvipBviiBvideosBvaccinesB
unsurunsurBunhanBuluBujarnyabacaBuighurBtrijayaBtragisBtopiBtjinBtisuBthoseBtembakauBtaxiBtaufikBtatangBtapanuliBtaksirBtahiruBsyarifuddinBsyahBsuyusB	supervisiBsuchBspontanBsponsorBspecialBsosmedBsosialisBsmanBsinkronisasiBsimpleBsimonBsideBsetkabBsetjenBsetiajiBsentralisasiBsensorBsangkalBsandyBsanBsakingB	saifuddinBsafetyBsabdaBrohBrobiBrinduBrestorativeBresapBreportsBrenangBrekapitulasiBreflyBreboBreachBrasyidBquickBputeraBpurwoBpurnomoBprajaBpindadBpilegBpictureBpeterB	pengantinBpendetaBpelatnasBpdbBpbgBpatriotBpatriciaBpartnershipB	parawansaBparagrafBpamongBpalopoB	palestineBpahalaBpacarBorangtuanyaBokiB
okezonecomBnyinyirBnotabeneBnorthBnomerBngabalinBnaufalBnatriumBnasimBnasaB
nainggolanBnafalBmuktamarBmoutongBmonthB
monitoringBmonggoBmohB
modifikasiBmerinciBmemberitahuBmemBmediasiBmedaliBmbBmaxBmaskBmasalahmasalahBmaruararBmanualB
majalengkaBluwuBluputBlubisBlossBlnBlintahBlesteBlenggangBlenaBlebatBlaterBladangBlabirinB	kurniawanBkumparancomBkotimBkopasgatB
kondensasiBkonaweBknownBkiongBkhairunnisaBkesiapsiagaanBkesalB	keponakanBkempotBkemensosB	kelontongBkelabuBkeepB	kebayoranBkbBkardusBkansB	kamtibmasBkambojaBkamBkahmiBkacauBjohnnyBjktBjhonBjengkolBjemurBjelekBjeddahBiusBironisBipbB
intimidasiB	interviewBindomieBimbalBigorBhumanisBhujatBhrBhoweverBhongkongBhongBhondaBhembusBhajatBhainanBhadirinBgulingBguaBgoldBgodBgerusBgelintirBgayBgalaxyBgadjahBfuegoBframingBfotokopiBfictorBeveryoneBeuroBetosBetisBeskalasiBelitBegoB	ecommerceBecerBdumaiBduluanBdubaiBdpBdolBdoesBdngnBdmiBdiskusBdharmaBdehB	definitifBdedeBdatabaseBdalilBcukurBcsisBcollaboratorBcobacobaBcmbBcimahiBcilacapBcieBchoirulBcewekBcellBcelengBcelahBcardBcangkirBcanduBcacarBbukubukuB
buktibuktiBbuburBbrinBbpkpBbothB
bojonegoroBbobotBbiksuBbiasBbhwBbhinekaBbestBbenuaBbekukBbehindB
barangjasaBbantulBbabBatiBarwanaBappBapitBanonimBaniesrkBaneBancangBanakanaknyaBamputasiBampoBaktivasiBakhyarBagencyB	accordingBabsolutBzhangBzaitunByuwonoByunaniByogiByasinByantoByaaaBwayanBwathanBwaskitaBwamenhanBviviBvictoriaBveteranBusingBuserBundiBunBudaBtulusBtuberkulosisBtuBtpptkdBtopengBtlBtjokroBtisikBthreadBthoriqB
thimerosalBtenteramBtengahkabupatenBtelponBteksturBteduhBtdBtamboraBtakenBsyaratsyaratB	syamsudinBsyaBswediaBsumurB	sukoharjoBsujudBstrikeBstillBstatesBsoldierBsniperBskorBsimbolikBsharifBseranggaBsemutBselimutBsekulerBsekresiBsekalimantanBsedapBsebelasBsaveBsatriaBsaringBsangonB	salsabilaBsajadahBsaidimanBrzeszowB	runtuweneBrotasiBroseBrjBrightBresignBreputasiBregidentBreaktifBrdpuB
raumdeuterBratnoBramuBrakornasBpurbaBproductB	preventifBpresidensialB
presentasiBpostingannyaBpostedBpluralBplazaBplakBpialaBphdBpengambilalihanBpencetBpelbagaiBpekerjaburuhBpejalBpecelBpeaceBpcnuBpcBpautBpaudBpantiBpaniaiBpandemicBpalestinianBonkologiBomongBokeBojolBnyaringBnormalisasiBnonblokBnominasiBnoelBnirwonoBnianticB
netralitasB	negarawanBnavigasiBnaungBnasraniBnafkahBmustolihBmustofaBmulyonoBmuhamadBmrekaBmonstermonsterB	mongondowBmoneyBmohammedBmohamadBmoderasiBmirisBminggumingguBmicinBmesraBmenyebarluaskanBmenterikepalaBmenBmcaB
mattalittiBmarzukiBmarwataBmarkobarBmargondaB
managementBmampirBmaklumatBmahlukBmahkotaBmagnisBmagangBmabukBlukBlkppBliganaBliberalBlenyapBlelehBlejitB	legalitasBlankaBlanggengBlanalBlacurBkumisB
kronologisBkredibilitasBkreativitasBkotawaringinBkorupBkorselBkonvoiBkonstruktifBkonsepsiB	kompolnasBkomplekBkomeringBkomdisB	komarudinBkolombiaBkoalaBkisruhBkiamatBketBkembarBkelopakBkelaminBkedudukBkebonBkbgoBkartiniB
kanakkanakBkajariBjumhurBjinBjeflerBjauhjauhB	jaleswariBisraeliBisnainiB	islamiyahBislamicBirvantoBirianaBiqBintrospeksiBintipBinterestBintanBinsinyurBinjilBinformasiinformasiBindarB	includingB
ikutikutanBikhwahBidroosBiblisBhoursBhotB
hipertensiBhiBhetBheryBhereB	hepatitisBhensatBharumBgwBgroupsBgpsBgotongroyongBgimBgetahBgerombolBgejalagejalaBgegabahBgedunggedungBgandumBgambargambarBfreedomB
foundationB
fotograferBfosilBflowBfiskalB
firmansyahB	finansialBfederasiBfdaBfarBfairBevolusiB
episentrumBepidemiologiBemiratB	electoralBelakBekstraBekspresB	eksekutorBdusunBdrsBdriverBdrinkBdoyanBditerusteruskanBdistributorBdioBdidihB
dibuatbuatBdibesarbesarkanBdekanB	degradasiBdatoBdascoBdaengBcutBcostaBcornelesBclassBcilegonBcakraBcabulBbuyingB
bupatiwaliBbudiantoB	budayawanBbtBbrutalB	brawijayaBbpBbolaangBboikottravelokaBbnnkBbhinnekaBbeyBberhatihatilahB
bebasaktifBbayongBbasicBbarongBbarelBbaptisBbakBbaisB
bahanbahanBasengBardinaBarabiaBantingB	antikapalBanenBandiniB	aminuddinBallohBakustikBajunBairportBaiibBadwiBactingBabolisiByussufB	yesterdayBxxBxviicenderawasihBwouldBwithoutB	wirausahaBwhyBwatakBwartegBwarasB
wantimpresBwamenkesBwalkoutBvotingBvetoBvendorBuploadBulungB	ubedillahBtwkBtututBturnbackhoaxidBtumbangB	trombositB	transkripBtraderBtorpedoBtoleranB	tjahjantoBtimpalBthinkBthatsBteriguBterburuburuBtenisBtengaraB
telematikaBteachingBtbdBtbBtatarBtapakBtambunBtabletBsyahriBswalayanBswadayaBsusaningtyasBsurahBsuparnoBsubhanBstimulusBsterilisasiBstayBstationBstartBstarBstakeholdersBspsBsoftB	soenggonoBsiurBsirihBsintangBsinceBsilmyBsilikonBsigapBsidartoBshiftBshBsewaktuwaktuBseskabB
sentimeterBsengatBselubungBselewengB	selebaranBsekatBsayingBsaturdayBsarapBsarBsaniB	sandiwaraBsanderaBsanakBsamsungBsamsatBsampulBsameBsakaBroyalBrivanBrifaiBriasBresepsiBrelokasiBrefugeesBrecordBrawaBrasulBrankingBranggaBranaBramalBrakerwilBrajegBrahmanBracingBpurwalaksanaBpurbalinggaBpuadiBpsbbBproyekproyekBpropinsiBproaktifB
primordialB	presidiumBpredikatBprasetyaBppsjBppnsBpossibleBpopB
pokokpokokBpoBplataranBpinusB	pinontoanBpeudadaBpentolBpenggalBpayudaraBpayahBpascasarjanaBpartyBparlyBpantangBpalaBownBomegaBogahB	officialsBobrolB
nyatanyataBnovaB	nonlansiaBnitrogenBnhclBngapainBnekatB
nasionalisBnanoBnanggroeBnanB	nampaknyaBnalarBnadineBmustajabBmuchBmualBmprdprBmotoBmonstersBminiBmilB	miftachulBmensosBmenguninstallBmenepBmeminimalisirB
megaproyekBmcdonaldBmaungBmarwanBmarhaenBmapoldaBmantelBmanggaBmachupoBlumrahBlubukBlivingB	liverpoolBlisensiBlilinBliliBlendirBleeBleadBlarosaBlapianBlaosBlandBlanBlakumaniBlaaBkulonBkriminalisasiBkraBkppslnBkopralBkopBkontrasBkonglomeratBkongkalikongBkompleksitasBkomplainBklasikBkivlanBkisyantoBkhayalBkfcBkerudungBkeratinBkelulusBkdrtBkbppBkatedralBkasirBkanwilBkamusBkalbeBkafanBkadirBkacamataBjunaidiBjulBjuiceBjogjaBjiBjesuitBjerujiBjerryBjeliB
jayawijayaBjasmaniBjanuaryBjaheBjacksonBismaunB	iriansyahBinstabilitasBinsiderBinkubasiBinjuredBinibacaB	imajinasiBigBibadatBhusnulBhijabBherculesBhausBhateBharvestBhandBhamianinBhaditsBguinnessBgueBgreatBgrabBgiveBgiliBghazaliBgayungBgandrungBgambirBfritzBfourBforensikB	fatmawatiB	fantastisBfaktualBfaceB
experienceBexerciseB
everythingBeraniBempatiBemakemakBearlyBdusBdramaBdorceBdioksidaB	differentBdidapukBdesadesaBdemakBdelapB	dehidrasiBdeddyBdbdBcreditBcoverageBcourseBcouldBconsumerBcnbcBclaimBcipayungBcikalBchenBchatB	cemerlangBcebongBcaseBcapaBcandaBbungkukB
buahbuahanB	brookingsBbriefingBbosowaB	boenjaminBblusukanBbidikBbernardBberbelitbelitBberandaBbengkelBbcBbasirBbarikadeBbarBbalutBbagibagiBawBaurBaulaBaukusB
associatedBarteriBartB
arrmanathaBaromaBariaBapikBapifBanuB	antiterorBantennaBanggaBanangBaminoBalmaidahBalmBaliyahBalergiBalasanalasanBalangkahBalaikumBakuntabilitasBakulakuBakmalBagustBactB
zuckerbergBzincBzatzatByusaByodiumBxlBwrwbBwowokBwowBwisudaBwendyBwartaBwarsawaBwangsaBwaisakBwabarakatuhBvidioBvickyButtarakhandBurungBurineBurbanBulatBueBudhBtukBtrombusBtrisaktiBtradeBtpiBtobatBtmiiBtlgBtjandraBtindaklanjutiBtiktokBthanksBtermB
temperaturBtangkisBtamtamaBtamiangBtaktikBtajiriB	taharrushBtahapantahapanBtabayunBsyifaBsyamBsunBsukhoiBsukarnoBsuhentyB	suhartoyoBsufyanBsudrajatB	subscribeBsubrotoBsuardiBsuBstresBstoreBspyBspikeBsokongBsmallBsloganBslipBsiramBsintetikB	sinambungB
sildenafilBsilaturahimBsiklusBsemenjakBsemenanjungBseluasluasnyaBseksB	sekongkolBsekalBsecBsebesarbesarnyaBsebanyakbanyaknyaBsebaikbaiknyaBsciencesBsbsnBsayBsatyaBsatpamBsasmitoBsanasiniBsalipBsaldiBsakeraBsainsBrutteB
rumahrumahBrumBrubenB
ruangbadanBrohulBrofiqB	rochesterBrmhBrizkaBringkasBrihongBretweetB	retribusiBretensiB	responsifB	reshuffleBreligiusB	religiousBrelB	rancaekekBranBramlanBraiBqrisBqrBputuBputerBpurapuraB
pulaupulauB
protokolerB	professorBpresisiB	pramugariBpositipBpojokBpointBplasmaBpinkB	perangkapBpenaltiBpeciBpassportBpartikelBparadeBpapayaBpanrbBpancasilaisBpancaBpanahB	pamekasanB
palaparingBpakuBpackBpacificBownerBovariumBosBornamenB	orangbacaBoraBopensBooredooB	olimpiadeBoksidaBokezoneBoilBnyariBnpaBnightBngobrolBngawiBngakBneverB	netanyahuBnegarawilayahBnauraBnaturalBnajjarBmwBmutakhirBmultiBmukenaBmudjionoBmualafBmshBmoyangBmorrisBmonumenBmilisiBmenitikberatkanBmenggarisbawahiB	mendikbudBmendiangBmenantuBmelkiBmelesetBmelatiBmeansB	mcdonaldsBmariupolBmapanBmaniaBmangsaB	manggaraiBmamujuBmajikanBmailBmadjidBluringBluapBloyalBlinaBlimutBlikesBlibraryBlibBlgbtiqBletaBlemariBlegaBlayatBlawasBlargeBlakonBlakiB	lahadaliaBkulinerBkuisB	kuantitasBktpelBkrnaB	kristianiBkristalBkrimBkonsesiBkompromiBkomplotBkompiB
kolamkolamBkiloB	kiblatnetBkiBkgboBketukBketidaksukaanBkerisBkerdilBkemihBkemensetnegBkemenpanBkemenhubBkelahiBkebiriB
karyakaryaBkaruniaBkantungBkambuhBkaltaraBkalselBkabinBjurangBjelmaBjedaBjantanBjannahBjamuBjalBitalyBisaBiptekBintoleransiB	indrayanaBimportBimmanuelBikonBikbarBikanikanBiihBhunterBhotmanBhotlineBholdingBhewaniBherzakyB
herlambangB	hemavitonBhelpBharyonoBharihariBhapsaraBhandsetBhaedarBgymBguyurBgunBgrahaBgrafikBgosipBgoldenBgmniBgilasBgettingBgerdBgerbongBgeorgeBgeologiBgemukBgayorBgawatBfrancisBforwardB
finsensiusBfewBfauciBfarhanB
faktafaktaBfaedahBextraBesensialBentryBeniB
engagementB	emosionalBelevasiB
eksaminasiBedBdyahBduliBdstBdradjatBdpoBdishubB
dimanamanaBdiiiB
dictionaryBdhaB	detasemenBdesentralisasiBdedyB
dasardasarBdanremBdahuriBdahnilBdahiBdahakBdadangBcraneBcountrysB	countriesB	corbuzierBcooperationBcolorBclearBcilikBcicitB
cicalengkaBchampionshipsBceraiBcbBcarBbuwasBbungsuB	bulukumbaB	budiyantoBbpihBbosanBbmBblueBblogspotBbintitBbimboBbiangBberesBbelgiaBbatakBbarusBbapaB	banyuasinBbakrieBbaitBbaharuBbadakBbacokBazzamBaskrindoBashBardiB	arbitraseBapriantiB
antusiasmeBantriB	antirerorB
antarwargaBanimalBangkotBandalasBalunalunBalimBalaihiBakurasiB
ahokdjarotB
aglomerasiBagaBadisutjiptoBabisB
zulkarnainBzikirBzeroBzelenskyByudiByonifB	yerusalemByatimBxyzBxiiimerdekaBworkshopBwomanBwitaBwilliamBwestBwesleyBweekBwebsterBwarB
wangsakaraBwalBvvipBvasylBvalidasiBuyuBuskBusersBurlBupalBunjBunggasBultahBuiiBubaidBtuguBttdBtrialB	trenggonoBtranformasiBtrailBtrackBtpslnBtorajaBtkdBtiraniBtipikalBtingkahBtimbaB	thousandsBtetepBterompetBtelapakBtelantarBtekstilBtedrosBtankerBtanjungbalaiBtampereBtabayyunBtabahBsyrianBsyarafBsukukBsukotjoBsugengB	subkulturB	subhanahuBsubBstartedBstagnasiBsragenB	spiritualBsouthernBsourceB	sosiologiBsolatBsokBsofiaBsmgBslemanBskyBskripsiB	situbondoBsipilmiliterBsinkronBsingkongB
sinergitasBsimpBsilatBsigiBsierraBsiasatBshouldBshortBshopieBshopBshockBshanghaiBshallallahuBsergioBsentBsekociBsegelBseenBsasB	sarumpaetB
santriwatiBsanterB	samanhudiBsahatBsafariBsabunBrunnerBrtrwBrriBroemB	rockmelonBrizkiBrizaBriyadhBritaBringgitBrianaBreskrimBresiB	republikaBrenggutBreleaseBrekreasiB	reklamasiBrddBratuBrambuBputBpucukB	publisherBprotestBprivateBpressureB
preferensiB	potentialB
pornografiBpornoBpodcastBplBpillarsBphuBpertiwiBpemudapemudiBpembudidayaBpedangBpaulusBpatunganBpasswordBpasporriB
parliamentBpariamanBparasitBpanutanB
pandeglangBpancarBpancangBpamitBpalestiniansBpadiBotoritarianismeBoswaldBortuBopmBomnibusBolgaB
oknumoknumBobsesiBoarfishBnuriyahBnswBnsBnissaBniagaBngasihBnganjukBngakuBngabilaB	narrationBnakBmustBmuslimahB	muncikariBmunadiBmrtBmosulBmoscowBmoonsBmonopoliBmomentummomentumBmolekulBmochamadBminaBmimbarBmermaidBmenkopolhukamBmendingB
memitigasiBmembersBmayoBmayapadaBmateriilBmasjidmusalaBmasehiBmarbotBmaporinaBmapolsekBmanifestasiBmandarinBmaldiniBmagisterB	macrumorsBmabesadBlumajangBludahBluckyBluangB	loyalitasBlolaBlockBlobiBlittleBlipiBlesuBlengketBlegoBlegionnairesBleburBlebamB
leadershipBleBlatiefBlaserBlakaBlabsBlabaBkwikBkunyahBkudetaBkucurBkuakBkpmBkpdaBkoridorBkopilotBkonvergensiB
konstelasiBkonsolBkonsinyeringB
komplikasiBkomoditiBkomedianBkohesiBkobarBknotsBklaksonBklBkingBketidakpuasanBketiBkesanaBkenyangBkelinciBkekBkaurBkatiBkasadBkartelBkarbohidratBkaranganyarBkapsulB
kamaruddinBkalapasBkakapBjobBjernihBjeparaBjelajahBjargonBjapanBjamptBjamaikaBjagatBitikadBiskemikBisengBisapBinventarisasiBinspeksiB	infanteriBindofoodB	indochinaBindoBindependentBincB	imunologiB	imigresenBimigranBillegalBilirBideideBicmiBibrahimBhypermarketBhtcBhsBholikBhmBhisabB
hasanuddinBhartatiBharryBharkatB
hargahargaBhanafiBhamengkubuwonoBhaluanBgurunBguruguruBgulajawaBgubBgroboganBgiurBgigihB
geraigeraiBgentingBgenevaBgencatBgembongBgardaBfriendBforeignB	fleksibelBfilsufBfiksiBfiberBfebrieBfawaidB	executiveB	excessiveBestateBeselonBentengBenggaB
ekstradisiB	eksplisitBekologisBdulangBdtsBdprriBdomesticBdjarumB	diskursusB
dipungkiriBdiplomatB	diplomacyBdiedB	diagnosisBdhakiriB	detikinetBdermagaBderB
demokratikBdemiliterisasiBdeceasedBdeathsB
darussalamBcurhatBcriminalBcreateBcppnpaBcourtBcountB
corruptionBcorronaB	copyrightB
conventionB	contrailsBcontextBconcernB	communityBcomingBcoastBcitilinkBciptoBcibuburBciaBchattingBchaniagoBccBcashBbusanaBburgerB
bumiputeraBbulogBbuayaBbriptuBbrebesBbravoBbpakBbpaBborneoBbltBbloraBbkdBbitungnewscomBbioB	billboardBbetinaBberlarutlarutBbenakBbelBbegugBbegawanBbayaBbasmiBbaretB	barcelonaBbappiluBbantengBbangkuB	balaikotaBbaksoBbajingBaustriaBauratBattackBatlantikBardaBarakBapdBapBantoBantarnegaraBannasBanarkiB	amsterdamBamiBamericaBamaBalwaysBalurBalkitabB
alisudarsoBalineaBalamiahB	agreementBaekBadlhBadlBaddressBaddinBactuallyBacademyBaborsiBabidinBzumbaB	zainuddinByuridisByuByngByennyByanByahukimoBwwfBwilsonBwiekoB	widyawatiB	wicaksonoBweeksBwealthBwasitaatmadjaBwasilahBwarahmatullahiB	wakapolriBvivaBvitBviralnyaBvertikalBvenaBvegaBvatikanBvariantBuugdBuntkBunifilBumbaraBumarsyahBukiBuganBturusBturnBtropisB
tribunnewsBtrafficBtotoBtombakBtolokBtohirBtobaBtimikaBtimahBthreatsBthrBtheresiaBtheoB	testimoniBteslaBterangteranganBtemperatureB	tegalsariBtebingBtandatanganiBtanaBtamsilBtalangBtakmirBtahlilBtagBsymphonyBsylviBsyarwanBsyamsurizalBsyaifulBsyahrialBsyafeiBsurveisurveiB
suratsuratBsuratiBsupresB	supremasiBsunsBsunnahBsultraB	sulistiyoBsugestiBsufmiBsudomoBsudewoBsubjectBstrataBstandBsrBspaceBsourcesB	somethingBsmokeBsmiBskinBsiraitBsinarmasBsiapsiapBsewenangwenangBsetyawanBsetiyokoBseskoadBseskoB
sertamertaBserigalaBserempakBserdaB	serbagunaBsepuhBsepBsensasiBsengitBsenenBsendiBsenBsemburBselagiBsekurangkurangnyaBsecondsBsecondBsebBsdrBsdfBsatrioBsatireBsaputraBsantapB	sanitizerBsanggaBsandarBsampangBsalawatBsahurBsabungBsabotaseBrusdiBruntuhBrundungB	rubijantoBruahBronaldoBrohypnolBriverBrivalBristekBriskBrisauBrisalahBringkusBrestoranrumahB	residentsBreplyingBrepliBrenggangBredupBrecordedBrealityBraymondBratioBratingBrantisBrangsangBramayanaBrakhineB
rakabumingBrakaBrahmaBrahayuBrachmatBqajarBpwB
putraputriBputrantoBputeraputeriB
pujakesumaBpujaBptmiBpsnB
provokatorB	prototipeBprofileBprofesionalismeB
priawanitaBpraktisiB
prakondisiBppmBpphBpostsBpolrestabesBpolisBpolderBpltuBpitahcBpingBphilippinesB
phenomenonBpetroninBpetikBperiodisasiBperikemanusiaanBperformaBperdanakusumaBpencilBpenandatanganB
payakumbuhBpawBpatientsBpastorBpastaBpassingBpashaBparepareBpapaBpantulBpanjatBpangkasBpanelBpamenBpakdeBpabrikanBoverhaulBotomotifB	organisirBopsionalBopsBopportunityBonceBoktBoksalatBobralBoborBnzBntBnphdBnormatifBnoerdinBnobelBnigeriaBngurahBngertiBngeriBngangkatBngamukBnetflixB	negoisasiBnatureBnamesBnaifBmustopaBmunirBmunaBmulyaBmuhBmuazinBmsigBmsiBmrpBmoveBmonthsBmomentBmolorBmoldovaBmodernaB
misionarisB
minimarketBmigrantB	microchipB
metodologiBmessagesBmerosotBmeriamBmercuryBmentholB
menstruasiBmenhubBmencaricariBmellazB	melbourneBmegahBmautBmastukiBmaskingBmasalBmarsdyaBmarinaB	manusiawiBmangunkusumoBmangkunegaraBmangkirBmaleaB
malammalamB	mahasiswiBmagribBmacronBmabimsBmabesauBluthfiBltBlsmBloyalisBlookBloB	literaturBlirboyoBliongBlicinBletterBlembekBlembahBlemasB
legitimateBlegendsBleftBleaveBleastBlbbpBlakasengBlajurBlabolatoriumBkumoroB
kulonprogoBkuhpmB	kuesionerBkremasiB	kosmetikaB	koordinatBkontanB
konsorsiumB
konservasiBkompletB
kompetitifBkolonialismeBkoleksiBkolBkodB	knowledgeBklausulBklatenB
kitabkitabBkillBkilatBkiknBkhotimahBkeywordBketidakcermatanBketiakBkemnakerBkemejaBkelBkejuBkejangBkecapBkebhinekaanBkatastropikBkarungBkaromBkarenBkapitaBkamalaBkaliumB	kalideresBkalbarBkajiankajianBkajaiBkagoBkaesangB
kadaluarsaBkadBjuwanaB
jurnalismeBjuliusBjuandaBjoniBjokowijkBjohnsonBjisBjepitBjennerBjeniusBjassinBjambonBjakselBjaBisnaeniB	islamediaBirigasiBirdiantoBipsB
inventarisBinputB	inisiatorBinformalB
infografisB
indonesiasB	imperatifBimfBilyaBilmaBijtiBiggBigdBiedBhybridBhutamrinBhundredsBhuBhostB	holocaustBholidayBhilsentegerBhijrahBhighBhielsaBheydenBherdiawantoBherbertBhendropriyonoB	hemoragikBheartBharyadiBhartantoBhariyonoBharitanggalBhappyBhantuB
gymnastiarB
guatemalasBgranatBgradeBgoingBgiveawayBgitarBgitaBgiphyBgieBgerogotBgerakangerakanBgerahBgendongBgemparBgemilangBgegasBgbkB	gatotkacaBgaransiBganjalBfrasaB
fransiskusBfransB	franciscoBfpBfoundingB	followingBfokkyBfluorideBflightBfkuiB	fernandesBfebryBfasilitatorBfanpageBfafhhBesdmBerwinBernaBeringBenvironmentBencyclopediaBelokBelektromagnetikBelectionB
eksperimenB	ekspedisiBekonomisBekonomipolitikBearthB	dwifungsiBdurenBdunguBdukunBdueBdrhBdonutsBdobrakBdoangBdmoBdittipideksusB	ditlantasBdistorsiB
dissentingBdisorderBdirB
diplomatikBdiesBdiberitahukanBdiamdiamBdharmaisBdesakelurahanBdepresiBdepnakerBdepartementB
democraticBdelBdateBdashtearchiBdanyonBdamBdaiBdadBcrisisBcpoBcpBcourtesyBcornerBcoretB
confidenceBcompleteBcommonBcomesBcnnindonesiaBclubBclinicBclimateBclickBcikarangBcidukB
chemtrailsBchargeBcfrBcerpenBcerobohBcendekiawanBcelciusBcekikBcekalBcasingBcarolinaBcargoBcaplokBcapekBcaciBbwBburningBbuncitBbtsBbskdnBbpkhBbpjphBbondongB	bombardirBboardB
blackberryBbivitriBbireuenBbimasBbidenBbhutanBbflBbetterBbesutBbersiapsiapBbercakBbensinBbenihBbelowB	beautifulBbateraiBbanjarmasinBbangkalBbalapBbakriBbakatBbaidowiBbahrainBbaghdadBbachtiarBazamBawayBataturkBatapBastronotBastraB	assistantBassetBasriBaspriB
aspeksindoBaslogBaskesBasalusulBarielBaqidahBappearsBanticorruptionBantarlembagaBanimasiBamsariBamfibiB	ambulanceBamarahBalongBallahuakbarBaktualBakhmadBakademisBakabriBajbBajabBaipdaBaipBahirnyaBafwanBafBadvokatBaddB
activitiesBacrossBabuabuBabstainBaamirBzuhairiBzainudinByudisialByraByouthByoungByohanesByaserBwonosariBwitsBwilayahwilayahBwetanBwelcomeBwatanabeBwassalamualaikumBwasiatB
wasathiyahBwanBwallahualamBwahabBwadukBvotersB	volodymyrBvolcanicBviryanBviolentBvanuatuBvaBusuallyBupetiBuntilBunduhBumiBulurB	ultimatumBukrainarusiaBujungujungnyaB
turbulensiBtumpengBtumbalBtubanBtruthBtransnasionalBtrainingBtraditionalBtpkBtownBtoolsBtooBtongkatBtollBtokBtiupBtilawahBtikaiBtheoryBtersebutbacaB
termometerBterikBterasBterBtensiBtekukBtaubatBtatoBtarafBtanwirBtanurBtalamauBtaalaBsyakirBsyafiiB	suryatmanBsurpriseB
supportingBsupplyBsuplemenBsundariBsunantoBsumbawaBsukarelawanB	suhartonoBsuhairBsufferedB	sudarnotoBsudarmaBsubsBsubiantosandiagaBstudentsBstrukBstrongB	streamingBstmBstiffBsteveBstephenBstartupBstageB	stabilityB
sriwidjajaBspesialBspdpBspbkonkBsolutionB	solichienBsoftwareBsoebrotoBsodorBskpdBskorsBskbBsjBsisipB	sisdiknasBsipitBsingleBsindonewscomBsindoBsilsilahB	siliwangiB	sihombingBsiharBsidrapBsialBsholehBsevereBsettingBsetirBsetijoB
sesmenporaBserayaB	serampangBsentilBsenpiBsendirisendiriBsenatBselfieBselfBselektifB
selebritisBselandiaBsekberBsejukBseduhBsdaBscreenBsaysBsastroBsarsBsantoBsandungBsamsudinBsampaisampaiBsalutBsallamB
salamanderB	salabendaBsafitriBsafaatB	ryamizardBruunyaBrussiaBrurutBrubelBruBrozoBrootBroleBrobertoBroadBrmolBrizkiyansyahBriuhBrismayaBrifqhaBreturnBresultBresourceB
resistensiBrescueBrenyB	relationsB
rekruitmenBrekatBrekapBreguB
regenerasiBrecordsB	reboisasiBrayBrawagedeBratenyaBratasBratBrasunaB
rapatrapatBranjauBramdhanBramdaniBrambutanBrakusBraffiB	radmanishBqqBpwnuBpusakaBpurukBpurnaBpunahBpuBptsBproxyBprovinsiprovinsiBprovinceBprovicesBprovBprotectBprostatB
proseduralBprogressBproduktivitasB
productionBprimaB
preventionBprematurBpradeshBpompeoBpolwanBpodomoroBpmiiBplangBpkkBpiringBpiluBpilBpiatuBphillipBpesonaBpesawatpesawatBperumdaBpepatahBpentasBpemrogramanBpemimpinpemimpinBpdpBpdiperjuanganBpatriotismeBpassBpascaoperasiBpartnerBparalelBpanselBpangkoarmadaBpandaiBpakemBpahaBovenBottBotentikBortunyaBonoBonarBoliverBokBnurseBnurhudaBnurdinBnunukanBnopolBnopemberBniuBninoBninjaBninisBnikotinBnikenBnikelBnickeBngurusinBngaturngaturBngambilBnevusBnevilisBnetizensBnetgritBneoBnegridurjanaBnationsBnatalisBnanyaBnanggalaBnanangBnahuBnadirBmuzadiBmutihBmutiaraBmustikaBmuslimsBmuslimatBmusholaBmuralBmunawirBmultitafsirBmuktiB	mukadimahBmujarabBmuhtadiBmuasalBmuasBmriBmpBmohamedBmisteriBmissionB	misbakhunBmiriamBmirasBmindsetBminangkabauBmimikaBmikrajBmikeB	microsoftBmgrBmewantiwantiBmetmalaysiaB	merindingB
merahputihBmenyesatkanmisleadingBmenristekdiktiB	mengangguBmengakomodirBmendagBmembranBmelakaBmeilianaBmedicB
mediamediaBmedcoB
masyaallahB
masterplanBmassiveBmarutB	marketingBmantuBmansyurBmancingmancingB
manajerialBmanagingBmamanBmalondaB
malapetakaBmakzulBmakroBmakmumBmakasarBmakalahBmakBmaiBmaghribBmagetanBmaagBlututBlunarBludesBlubuklinggauBlowBlosBlitigasiBlinggauBlilB
likuefaksiBlikeabilitasBlhsBletupBletBlesBleoneBlenisBlempariBleluconBleksikalBleavesBleaseBleadersBlarisBlantangB	lambertusBlailaBlahatBkuwaitBkurbanBkupingBkujurBkubahBkrlBkriptoBkpaiB	kotamadyaBkotakabupatenBkosBkorekB	kontingenB
kontigensiBkonsideransB	konselingBkonotasiBkongoB	konduktorBkomposerB
kompetitorB	komisonerBkomenB
kodiklatadBknBkiyaiBkimBkiemasBkickBkholikBkhairatBkhairBketidaksetujuanBkesewenangwenanganBkerokBkeramikBkerakBkentangBkenjeranBkeningBkendorBkemenparekrafBkemahBkeluwingBkelamBkedungBkecohBkasubditBkasetwapresBkaryawannyaBkartalBkarimunBkarcisBkapuasBkalibataBkabutBjustifikasiBjusteruBjurnalistikBjumpingBjumantaBjulyBjubahBjptBjpprBjonanBjokowijusufBjohnyBjodiBjknkisBjasmevBjarijariB	jamsostekBjamsosBjaktimB	istiqomahBisranBironiBiriBiregulerB	irasionalBipiBiparBipBinvestigationBintruksiBintimB	interupsiBinterpretasiB	integrityB
integratedB
instrukturBinstitutionB	instalasiBinsideB	indrakenzBindonesiasentrisBindianBindependensiBimmuneB
imingimingBimbBibaB	hutahaeanBholistikBhistoryBhistoriBherindraBheldBheavyBhayoBhawaBharrisonBhardBhapeBhangBhandokoB	hamdayamaBhamburBhalteBhalalmuiorgBgumayBgsmBgroomingBgowesBgosokB	gogagomanBgmnBgmcBglutamatBgivenBgintingBgimmickBgiliyangBgerilyaBgelisahB	gelimpangBgelangBgatalBgalauBfremmBfrediBfosfatBfortBforkompimdaBfondasiB	followersBfluoridaB
fluktuatifBflorenceBfirmaBfiraunBfikihBfieldBfeetBfatoniBfathorBfastBfardhuBfansB	fakrullohBfactoryBextractBexplanationBexampleBeuaBethesBequinoxBepisodeBennyBengineeringBenasBekataloglkppgoidBehBefendiB	educationBeatingBeastBdurianBdunkinBduhBdudiBdrainaseBdpnBdosBdorBdonnyBdonetskBdonatBdominoBdoktoralBdoctorBdnadnaBdkmBdiskonBdiperjualbelikanBdiniyahBdiksiBdikaitkaitkanBdikBdieselB
diberitahuBdiahB	destinasiBdepkesBdeliveryBdeclarationBdeaBdatarB	danpuspomBdandimBdamanikBcounterBcouncilBcorporationBcorengBcorakB	conditionBcomputerBcommunicationsBcombatBclinicalBcicilBciamisBchurchBcharlesBchangiBchangesBchangeB	championsBceriaBcereBcentralBcarutBcaptBcapitalBcampaignBcampBcamilBcameBcallsBcahariBcabakBbushBbundarBbumBbuleBbugBbuddhistBbrightBbrigadeBbpntBbpkibuBbpipBboyolaliBboyB	bondowosoBbolkiahB
bolehbolehBbobolBbnykBblhBbisBbiotisBbiofarmaBbilamanaBbidBbesukBbersitegangBberplatBbermainmainBberitasatutvBberitahukanBberfikirBberbondongbondongBbenniBbelitBbelieveBbecomeBbebatuanBbcaBbayamBbayB
batasbatasBbasarahBbanjarnegaraBbandelBbaladewaBbahumembahuBaugBasyikBastrazenecaBastaghfirullahBastagfirullahBassalamuBassalammualaikumBaspirinB	aspartameBasopsBasongBasmatBaskBartileriBariyoBaristBaprBantisipatifBantioksidanBanthonyBantenaBantekBantaranewscomBanneBanjakBanimalsBaniesahyB	anggrainiBanehanehBancolB	amirullahBalternativeBalhamdulilahBalfathchannelBaksaBakBahmedBagoengB
afriansyahBadvisorBadmindukBaditamaBadhocBademBaddedBacwgBacauBableBabkBabiBabeBabdBabBzulhijahBzuhurBzuhriBzubaidahBzombieBzeeB	yudikatifByudaB
youtubecomByoureByiByetByanuarByamanBwwwrctipluscomBwordsBwonogiriBwitB
wiraswastaBwindowclickBwilliamsBwifiBwidodojusufBweekendB
waterfrontBwaswasBwasidikBwarkopBwardhaniBwarahmatulahiBwalesBwalafiatBwakatobiBwakasadBwakaBwaitingBvulkanikBvulgarBvirginiaBvillagesBversusBversionBveniB
vegetarianBvarhanBvanessaB	valentinaButomoButbkBusmBusangBusamaBurasBurangBuptdBupdatedBunpadBunibosBunhcrBungkapnyabacaBunaunaBunairBumbarBukB
ujungujungBudangBubanBtypeBtwitBturnedBtupoksiBtunggangB
tunggaestiBtunaBtselBtruckBtrpB	trombosisBtransitBtransceiverBtraditionallyBtoyotaBtoxicBtourismBtourBtouchBtoothbrushesBtookBtolikaraB	tokopediaBtojoBtjakrabirawaBtitaniumBtitahBtipBtimbalBtikaB
thumbnailsB	thumbnailBthingsBtheresBtherapyBthelperBthdpBthaiBtetenBtesebutBterongBtepisBtembangBtembagaBtelpBteloletBtelecommunicationBtelanjurB	telanjangBtebangBtaxBtawurBtaruniBtanjungpinangBtanggungtanggungB
tandaniriaBtandangBtambalBtalkBtaklukBtahutahuBtagopBsyriaBsyofyanBsymptomsBsyeikhBsyawalBsyarwiBsuyatnoBsustainableBsuryosardjonoBsurvivorB
surveilansBsurabayatribunnewscomBsupioriBsuperiorBsuparjiBsupBsunniBsumadiBsulaemanBsuhermanBsuddingBsudanB	subiyantoBsuaracomBstudioBstormB	stimulasiBstepsBstemBstefanusBstaminaBsquareBspreiBspotBsportBsporadisBspareBsowanBsotoBsosialpolitikBsoonBsonarBsolihinBsoldiersBsolarBsolB
soekarnoisBsnopesBsmusmkBsmuaBsmpnBsmokingBsmogaBskmBsiyasahBsixBsisasisaBsirupBsirraBsiriaBsipenderitaBsingaBsindromBsinBsimilarB	silfesterBsignedB
siapasiapaBsianturiBshuttleBshowsBshobriBshesBsexBsevenBseteruBsetelBserpihBserambinewscomBsensusBsendatBsemplakBsemboyanBsembelihBsemaBseluruslurusnyaBselularBseludupBselokanBselaputBselancarBselamalamanyaBsekunderBsekolahmadrasahBseiamatB	seiamanyaBsegitigaBseeingBsebbyBsebagiaBseafoodBsctvBsawanganBsatuansatuanBsattelB	satlinmasB
sarintanpaBsardjitoBsardenBsaptoBsanjungBsangsiBsamuraiB
salahuddinBsaksonoBsahsahBsaadiBrupsBrupeeBrumsiahBrumpinB
ruangruangBruangkepalaBrsupBrsdcBrpjmnBroyyanBroteBrosidaBroomBrontokBrongkongBrobekBrmB
riswinandiBriekeBridingBricardoBriakBriadyBretaBresponseBrespiratoryBresidentBreseptorBrepublicBrenteBrenB	relevansiBreklameBrekanrekannyaBrekB
registeredBrefugeeBreformaBreformB
referendumBreceiveBrebelsBrawasBrasioBrasidiBranmorBrangerBrambangBrambahB	ramadhanaBrakorBrakernasBraisingBraiderBrabiesBquarryBqualityBpyroclasticBpundakBpulungBpudjiastutiBpudingBpudarBptnbhBpsrBprotocolBprotapB
prostitusiBprosesprosesBpropalestinianBpromotorB	progresifBproblematikaBprivateislandonlinecomBpriorBpresidenwakilBprenadamediaBpremiB	prasyaratBpramusimBpramudyaB	pragmatisBppnbappenasBpplpBportBporongB
populationB
pohonpohonBpniBplosoBplongoBplateBpizzaBpiusBpinterBpintasBpindaiBpimpinandireksiBpijatB
photographBpgnBpetanBperubahanperubahanBpertagasBpersijaB	persekusiBpersadaBpermisiB	permendagBpermaiB	perkimtanBperbelanjaanmalBpenguruspengurusBpenghukumanpenghukumanBpemrovBpeltuBpelletBpedasBpdriBpawaiBpathBpasrahBpasaribuB
partisipanBparodiBparkBparitBparapatB
paranormalBparahyanganBparagonBparadoksBpangsaBpamorBpalungBpalmerahBpalangkarayaBpalangkaBpainBozBoxygenBoutletBorthodoxB	orangdataBopoBomboBoldBokaBohioBoditurBnyongBnyakimBnurseryBnuningBnulisBnriB	nonparpolBnoiseBnirlabaBnianBngoBngantreBnfBnengBnemBndanaBnativeBnanggapBnakhodaBnafiBnadiBnacionalBnabilaBnabatiBmwcBmuslihatBmusisiBmusicBmushollaBmurkaBmultikulturBmuhariBmountBmosqueBmoskwaBmorningB	moralitasBmonoarfaBmogotBmodifiedB	moderatorB	mochammadBmoBmjcB	misteriusBmissingBmiskomunikasiBmiminBmillionBmilesBmhcB	messengerB	messagingBmeryaBmenyianyiakanB	menterengBmenparekrafBmengolokolokB
menghadangBmenganalisaBmengBmemilkiBmelompatlompatBmelaratB	melambangBmdplBmcBmattaB
matematikaB	masyayikhBmarwahBmartialBmarkerB	marijuanaBmapsBmapolresBmantikB
manikmanikBmangkasBmanggilBmandarBmamunB	mamberamoBmallisaB	maliciousBmalemBmalaikatBmajorBmaidahBmahirB	maestraleBmadridBmachineBmacanBlusinBlsgBlpgBlokasilokasiBlocusBlobatoBloadinglazyBloaBlmaBlisanBlinrungBlinearBlimitedBlibyaBliangBliBlgiBleoBlembongBlembapB
legalisasiBlegacyBledBleagueBleadingBlawiBlateBlaskarlaskarBlannyBlambaiBlainnyabacaBlabuhanbatuBkusumastutiBkuntoBkuncoroBkttBktpelektronikBkstBksnBksBkristianBkrimeaBkremBkprBkosmetikBkopiahBkopaskaBkonsenBkonfirmasiprobableBkomponisBkomBkolonialBkolaboratifBkokamBkoinBkogoyaBklipBkitBkiranaBkilangBkidsBkhoirunnisaBkhelasiBkhatibBkeynoteBkeyBketidakjelasanBketidakadilanBkesimpangsiuranB	kertopatiB	kertajatiBkeroposBkerjasamanyaBkerekBkerbauBkepentingankepentinganBkemendesBkemenBkemarauBkedungkandangB	kedaikopiB
kecilkecilBkecebongBkciBkavlingB
kaskostradBkasatpolBkaretBkapendamBkapenB
kapalkapalBkapabilitasBkantinBkansasBkampungkampungBkampretBkampBkaharBkadungB
kaderisasiB
kadangkalaBkaayuBjuzBjuraganBjunBjpnncomBjosephBjinakBjenakBjelutongBjefriBjawasentrisB
jatinegaraBjambeBjamakBjaianBjabungBitemBiswantoBistiadatBisteriBiskanBiqsaBipaBinterpelasiB
interaktifB
innovationBinformanBinewsidBinduksiBindividualsBimpiB	imparsialBimmediatelyBikrarBikhsanBideologiideologiBicjrBibundaBhyBhusseinBhumanitarianBhugeBhpvBhopeBhogBhnyBhisterisBhinggapBhimbaraBhimBhijriyahBheliBhdBhayatiBhavingBhaturBhasibuanBharunaB	harbuwonoBhanyutB	handayaniBhamasBhalauBhahahaBhafizBhafidzBhadiyanaBhadimuljonoBhabishabisanBgumelarBguidingBgugunBgubunagiBgubrisBgriffithBgrafisBgoyahB
governanceB	goncanganBgodokBgnpfBgivingBgettyBgetsBgenetikaBgendutBgemaltoB	gelembungBgelakBgejalatandaBgazalB	gatotkocoBgaraBgamBgalakBgagangBgadingBfxBfutureBfuchsBfridayBfreshB	frekuensiBfreezingBfraksifraksiBfoyaBfounderBformaturBfordBfloridaBfixedBfiveBfitrahBfincantieriBfightBfeniBfeastB	fasyankesBfalselyBfaktorfaktorBfakBevisaBericBenzimBensiklopediaBenerjikBendriBencerBenBemoneyBemmaB
embelembelBelpijiBeloB
eliteeliteB	eliminasiB
eksplorasiBekspansiBekonomBekologiBeidBeffectsBedmcswgB	editorialBedgeBeasternBearlBdwijaBdukuhBdownloadBdouglasBdokumendokumenBdoctorsBdngBdmBdjuyandiB
diviralkanBdittipidsiberB	ditolelirBditkumBditiiBdistributionBdiskresiB
diskominfoBdisintegrasiBdisalahpahamiBdiplomaBdibahawaB
diakomodirBdewasBdetoksifikasiB
desasdesusBdesahBderaBdepakBdelhiBdelayBdekritB
deklaratorBdegreesBdeforestationBdefenceBdebrisBdebitBdaughterB	dasawarsaBdarwisBdarulBdarmawanBdarknessBdanusubrotoBdanielBdambetBdamageBdakiBdaanBcupBctBcsBcrossBcoverBcorbinBcondongBcolorsBcoelhoBcocaBcloudBcleaningBcilandakBchrismanBchicagoBcheckingB
charmenderBcharBchairulBchaBcgscBcelsiusBcecarBcauseBcatfishBcashlessBcaptureBcameraBcambukBcagarBcafeBbypassBburuhpekerjaB
burhanudinBburBbuntuBbuntetBbunglonBbundaBbullyBbukhoriBbukB	budiardjoBbtpBbsiBbrutoBbrsdmBbrpBbrownBbrotoBbripkaBbranchBbpjamsostekBboxesBbotBbontangB	bombastisB
bombardierBbolosBboksBbodiesB	bloombergB
blockchainBblenderB	bismillahBbidahBbibleBbhsBbhiBbetisBberulangulangBbersenangsenangBberlianBberkasberkasBberatpneumoniaBbeneranB	benderangBbeluBbeganBbdcsBbawabawaBbasketBbasabasiBbarangsiapaBbarackBbantaengBbaniBbangkaiBbaimBbahariB
bagumbayanBbadBayunBayooBayatayatBayaBayBawareBavantiB
auxilliaryB
australianBaulinaB
auditoriumBatomBassociationBaspersBasmaBasatidzBartsBarticleBarmandoBaribowoBarangBappliedBaphelionBapatisB	antiislamBantasariB
antaragamaBannaBangketB
angkaangkaBanggoroBamperaBamnestyBamnBammanBambrukBamblasBamazingBamandaBamadanomBalwiBalreadyBalphardB	almamaterB	alligatorBalizadehBalissaBalingBalienBalibabaBalemBalazharBalaminBaksesibilitasBakangBakalakalBainulBafifahBaffectedB
adriansyahBadministrationBadityaB	activistsBacapBaburizalBaburBabsahBabrilB
zulkarnaenBzoelvaBzaskiaBzakiBzainiByudisByudhoByonarmedByoByekaByazaByapenByandriByalimoBxinjiangBxiiiBwormsBworldsBwonBwomenBwnBwirotomoBwiratamaBwinterBwhiteBwhistleblowerBwgsBwestlifeB
wehrkreiseBwebmdBweatherBwearBwcBwasesoBwasallamBwardiBwaningBwangiB	wakefieldBwakeBwaitBwainnaiiiaihirojiunBwahjudoBwacanawacanaBvpB
volunteersBvokalisBvoiceBvisualisasiBvisionerBviolenceB	villagersBviewerBvernonBvariabelBvalasBvadisButilitasBusakB
usahausahaBurBunlawfulBuniversalitasBunionBunindraBunikaBungkitBunderstandingBunacceptableBumrohBumrBujarnyalebihB
ubaidillahBuanguangBtwentyB	tvonenewsBtutyBtuturnyabacaBturnbackhoaxBtupaiBtumiwaBtubagusBtualangBtsamaraBtryingBtryBtruthsBtrueBtrofiBtriyonoBtriwahidBtrimsBtriawanBtrackingBtpuBtotBtoscaBtomohonBtololBtolerirBtohokBtohaBtnbkBtmpBtlhB
tjiptaningBtiroidBtirBtindaklanjutBtindakantindakanB
timortimorBtidarBtiaptiapBtianjinBthusBthursdayBthtBthomafiBthankBtetasBtestsB	tertemperB
terroristsBteropongBterjalBteriakteriakBtentarakepolisianBtenggarakabupatenBtengBtendensiBtenBtelunjukBtellsBtelekonferensiBteledorBteaterBtdiBtatkalaBtasrifBtaskBtaoBtanzaniaBtanjakBtangkiBtangapBtamakaBtalksBtakurBtakjubBtakesBtajBtaipanB	tahutidakBtabuBtabloidBtabirBsyihabBsyariefBsyamsulBsyafriBswingBsuyonoB	sutradaraBsusutBsustainabilityBsusilaBsusatiaBsusandiBsurbaktiBsupliBsupirBsungkemBsunaryoB
sumbangsihBsulungBsultrakinicomBsulistiyantoBsukoliloBsuicideBsuguhB	suggestedBsudiB	subjektifBsubgrupBsubandiB	strongestBstempelBstelahBsteamBstatemenBstartingB	stainlessBstagnanB	sriwijayaBsprtiBsponsorshipBsponBspionBspeedBspatulaBspanishBsovereigntyB
sosiologisBsorosBsoreangBsorbanBsonB	sometimesBsomeoneBsolverBsoekarnoputraBsoejonoBsodiumB	snopescomBsnBskrangBsknBskillBsjaBsiyonoB
situssitusBsitoliBsitokinBsitinjakBsitaroB
siswasiswiBsirosisBsirnaBsingBsindurBsinagaBsimfoniBsimbolisBsignBsigitmantanB	sigitbacaB	sidenrengB	sidempuanBsickBshutdownBshintaBsheltonBsharpBsgtBsgrB
seyogyanyaBsespriB	servatiusBseruakBsertijabBsermaBseriosaBseriesB
seretseretBserempetB
seremonialBserbukBserakahB
sequencingBsepupuBseptBseorngBsentulBsenseBsensasionalBsenoajiBsenatorBsenamBsemuB
semenamenaBsemai
??
Const_5Const*
_output_shapes	
:?N*
dtype0	*??
value??B??	?N"??                                                 	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?       	      	      	      	      	      	      	      	      	      		      
	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	       	      !	      "	      #	      $	      %	      &	      '	      (	      )	      *	      +	      ,	      -	      .	      /	      0	      1	      2	      3	      4	      5	      6	      7	      8	      9	      :	      ;	      <	      =	      >	      ?	      @	      A	      B	      C	      D	      E	      F	      G	      H	      I	      J	      K	      L	      M	      N	      O	      P	      Q	      R	      S	      T	      U	      V	      W	      X	      Y	      Z	      [	      \	      ]	      ^	      _	      `	      a	      b	      c	      d	      e	      f	      g	      h	      i	      j	      k	      l	      m	      n	      o	      p	      q	      r	      s	      t	      u	      v	      w	      x	      y	      z	      {	      |	      }	      ~	      	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	       
      
      
      
      
      
      
      
      
      	
      

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
       
      !
      "
      #
      $
      %
      &
      '
      (
      )
      *
      +
      ,
      -
      .
      /
      0
      1
      2
      3
      4
      5
      6
      7
      8
      9
      :
      ;
      <
      =
      >
      ?
      @
      A
      B
      C
      D
      E
      F
      G
      H
      I
      J
      K
      L
      M
      N
      O
      P
      Q
      R
      S
      T
      U
      V
      W
      X
      Y
      Z
      [
      \
      ]
      ^
      _
      `
      a
      b
      c
      d
      e
      f
      g
      h
      i
      j
      k
      l
      m
      n
      o
      p
      q
      r
      s
      t
      u
      v
      w
      x
      y
      z
      {
      |
      }
      ~
      
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                                      	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?        !      !      !      !      !      !      !      !      !      	!      
!      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !       !      !!      "!      #!      $!      %!      &!      '!      (!      )!      *!      +!      ,!      -!      .!      /!      0!      1!      2!      3!      4!      5!      6!      7!      8!      9!      :!      ;!      <!      =!      >!      ?!      @!      A!      B!      C!      D!      E!      F!      G!      H!      I!      J!      K!      L!      M!      N!      O!      P!      Q!      R!      S!      T!      U!      V!      W!      X!      Y!      Z!      [!      \!      ]!      ^!      _!      `!      a!      b!      c!      d!      e!      f!      g!      h!      i!      j!      k!      l!      m!      n!      o!      p!      q!      r!      s!      t!      u!      v!      w!      x!      y!      z!      {!      |!      }!      ~!      !      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!       "      "      "      "      "      "      "      "      "      	"      
"      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "       "      !"      ""      #"      $"      %"      &"      '"      ("      )"      *"      +"      ,"      -"      ."      /"      0"      1"      2"      3"      4"      5"      6"      7"      8"      9"      :"      ;"      <"      ="      >"      ?"      @"      A"      B"      C"      D"      E"      F"      G"      H"      I"      J"      K"      L"      M"      N"      O"      P"      Q"      R"      S"      T"      U"      V"      W"      X"      Y"      Z"      ["      \"      ]"      ^"      _"      `"      a"      b"      c"      d"      e"      f"      g"      h"      i"      j"      k"      l"      m"      n"      o"      p"      q"      r"      s"      t"      u"      v"      w"      x"      y"      z"      {"      |"      }"      ~"      "      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"       #      #      #      #      #      #      #      #      #      	#      
#      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #       #      !#      "#      ##      $#      %#      &#      '#      (#      )#      *#      +#      ,#      -#      .#      /#      0#      1#      2#      3#      4#      5#      6#      7#      8#      9#      :#      ;#      <#      =#      >#      ?#      @#      A#      B#      C#      D#      E#      F#      G#      H#      I#      J#      K#      L#      M#      N#      O#      P#      Q#      R#      S#      T#      U#      V#      W#      X#      Y#      Z#      [#      \#      ]#      ^#      _#      `#      a#      b#      c#      d#      e#      f#      g#      h#      i#      j#      k#      l#      m#      n#      o#      p#      q#      r#      s#      t#      u#      v#      w#      x#      y#      z#      {#      |#      }#      ~#      #      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#       $      $      $      $      $      $      $      $      $      	$      
$      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $       $      !$      "$      #$      $$      %$      &$      '$      ($      )$      *$      +$      ,$      -$      .$      /$      0$      1$      2$      3$      4$      5$      6$      7$      8$      9$      :$      ;$      <$      =$      >$      ?$      @$      A$      B$      C$      D$      E$      F$      G$      H$      I$      J$      K$      L$      M$      N$      O$      P$      Q$      R$      S$      T$      U$      V$      W$      X$      Y$      Z$      [$      \$      ]$      ^$      _$      `$      a$      b$      c$      d$      e$      f$      g$      h$      i$      j$      k$      l$      m$      n$      o$      p$      q$      r$      s$      t$      u$      v$      w$      x$      y$      z$      {$      |$      }$      ~$      $      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$       %      %      %      %      %      %      %      %      %      	%      
%      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %       %      !%      "%      #%      $%      %%      &%      '%      (%      )%      *%      +%      ,%      -%      .%      /%      0%      1%      2%      3%      4%      5%      6%      7%      8%      9%      :%      ;%      <%      =%      >%      ?%      @%      A%      B%      C%      D%      E%      F%      G%      H%      I%      J%      K%      L%      M%      N%      O%      P%      Q%      R%      S%      T%      U%      V%      W%      X%      Y%      Z%      [%      \%      ]%      ^%      _%      `%      a%      b%      c%      d%      e%      f%      g%      h%      i%      j%      k%      l%      m%      n%      o%      p%      q%      r%      s%      t%      u%      v%      w%      x%      y%      z%      {%      |%      }%      ~%      %      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%       &      &      &      &      &      &      &      &      &      	&      
&      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &       &      !&      "&      #&      $&      %&      &&      '&      (&      )&      *&      +&      ,&      -&      .&      /&      0&      1&      2&      3&      4&      5&      6&      7&      8&      9&      :&      ;&      <&      =&      >&      ?&      @&      A&      B&      C&      D&      E&      F&      G&      H&      I&      J&      K&      L&      M&      N&      O&      P&      Q&      R&      S&      T&      U&      V&      W&      X&      Y&      Z&      [&      \&      ]&      ^&      _&      `&      a&      b&      c&      d&      e&      f&      g&      h&      i&      j&      k&      l&      m&      n&      o&      p&      q&      r&      s&      t&      u&      v&      w&      x&      y&      z&      {&      |&      }&      ~&      &      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&       '      '      '      '      '      '      '      '      '      	'      
'      '      '      '      '      '      
?
StatefulPartitionedCallStatefulPartitionedCall
hash_tableConst_4Const_5*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *#
fR
__inference_<lambda>_55668
?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *#
fR
__inference_<lambda>_55673
8
NoOpNoOp^PartitionedCall^StatefulPartitionedCall
?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableHashTable*
Tkeys0*
Tvalues0	*#
_class
loc:@MutableHashTable*
_output_shapes

::
?
Const_6Const"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
	optimizer
trainable_variables
	variables
	regularization_losses

	keras_api

signatures
 
(
_index_lookup_layer
	keras_api
b

embeddings
trainable_variables
	variables
regularization_losses
	keras_api
R
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
v
iter

beta_1

beta_2
	 decay
!learning_ratemEmFmGvHvIvJ

0
1
2

1
2
3
 
?
"non_trainable_variables
#layer_metrics
trainable_variables

$layers
%metrics
	variables
&layer_regularization_losses
	regularization_losses
 
3
'lookup_table
(token_counts
)	keras_api
 
db
VARIABLE_VALUEembedding/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
?
*non_trainable_variables
+layer_metrics

,layers
-metrics
trainable_variables
	variables
.layer_regularization_losses
regularization_losses
 
 
 
?
/non_trainable_variables
0layer_metrics

1layers
2metrics
trainable_variables
	variables
3layer_regularization_losses
regularization_losses
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
4non_trainable_variables
5layer_metrics

6layers
7metrics
trainable_variables
	variables
8layer_regularization_losses
regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
 
#
0
1
2
3
4

90
:1
 

;_initializer
RP
tableGlayer_with_weights-0/_index_lookup_layer/token_counts/.ATTRIBUTES/table
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	<total
	=count
>	variables
?	keras_api
D
	@total
	Acount
B
_fn_kwargs
C	variables
D	keras_api
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

<0
=1

>	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

@0
A1

C	variables
??
VARIABLE_VALUEAdam/embedding/embeddings/mVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/embedding/embeddings/vVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
z
serving_default_input_1Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCall_1StatefulPartitionedCallserving_default_input_1
hash_tableConstConst_1Const_2embedding/embeddingsdense/kernel
dense/bias*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference_signature_wrapper_55330
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename(embedding/embeddings/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp?MutableHashTable_lookup_table_export_values/LookupTableExportV2AMutableHashTable_lookup_table_export_values/LookupTableExportV2:1total/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp/Adam/embedding/embeddings/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp/Adam/embedding/embeddings/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOpConst_6*!
Tin
2		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *'
f"R 
__inference__traced_save_55764
?
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameembedding/embeddingsdense/kernel
dense/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateMutableHashTabletotalcounttotal_1count_1Adam/embedding/embeddings/mAdam/dense/kernel/mAdam/dense/bias/mAdam/embedding/embeddings/vAdam/dense/kernel/vAdam/dense/bias/v*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__traced_restore_55831??

?
:
__inference__creator_55605
identity??
hash_tabley

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name133*
value_dtype0	2

hash_tablec
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: 2

Identity[
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?	
?
#__inference_signature_wrapper_55330
input_1
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?N?
	unknown_4:	?
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__wrapped_model_549142
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
o
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_55564

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indicesx
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????2
Meanj
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
J__inference_GAPooling_model_layer_call_and_return_conditional_losses_55458

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	4
 embedding_embedding_lookup_55443:
?N?7
$dense_matmul_readvariableop_resource:	?3
%dense_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?embedding/embedding_lookup?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
text_vectorization/SqueezeSqueezeinputs*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization/Squeeze?
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2&
$text_vectorization/StringSplit/Const?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:2.
,text_vectorization/StringSplit/StringSplitV2?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2text_vectorization/StringSplit/strided_slice/stack?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4text_vectorization/StringSplit/strided_slice/stack_1?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4text_vectorization/StringSplit/strided_slice/stack_2?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2.
,text_vectorization/StringSplit/strided_slice?
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4text_vectorization/StringSplit/strided_slice_1/stack?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_1?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_2?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask20
.text_vectorization/StringSplit/strided_slice_1?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2W
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2e
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2d
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2b
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2@
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:?????????2(
&text_vectorization/string_lookup/Equal?
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/SelectV2?
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/Identity?
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 21
/text_vectorization/RaggedToTensor/default_value?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????,      2)
'text_vectorization/RaggedToTensor/Const?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:0`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS28
6text_vectorization/RaggedToTensor/RaggedTensorToTensor?
embedding/embedding_lookupResourceGather embedding_embedding_lookup_55443?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	*3
_class)
'%loc:@embedding/embedding_lookup/55443*-
_output_shapes
:???????????*
dtype02
embedding/embedding_lookup?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/55443*-
_output_shapes
:???????????2%
#embedding/embedding_lookup/Identity?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:???????????2'
%embedding/embedding_lookup/Identity_1?
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :21
/global_average_pooling1d/Mean/reduction_indices?
global_average_pooling1d/MeanMean.embedding/embedding_lookup/Identity_1:output:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2
global_average_pooling1d/Mean?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMul&global_average_pooling1d/Mean:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/BiasAdds
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense/Sigmoidl
IdentityIdentitydense/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^embedding/embedding_lookup?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
o
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_55009

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indicesp
MeanMeaninputsMean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2
Meanb
IdentityIdentityMean:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?y
?
J__inference_GAPooling_model_layer_call_and_return_conditional_losses_55029

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	#
embedding_55001:
?N?
dense_55023:	?
dense_55025:
identity??dense/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
text_vectorization/SqueezeSqueezeinputs*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization/Squeeze?
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2&
$text_vectorization/StringSplit/Const?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:2.
,text_vectorization/StringSplit/StringSplitV2?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2text_vectorization/StringSplit/strided_slice/stack?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4text_vectorization/StringSplit/strided_slice/stack_1?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4text_vectorization/StringSplit/strided_slice/stack_2?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2.
,text_vectorization/StringSplit/strided_slice?
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4text_vectorization/StringSplit/strided_slice_1/stack?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_1?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_2?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask20
.text_vectorization/StringSplit/strided_slice_1?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2W
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2e
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2d
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2b
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2@
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:?????????2(
&text_vectorization/string_lookup/Equal?
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/SelectV2?
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/Identity?
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 21
/text_vectorization/RaggedToTensor/default_value?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????,      2)
'text_vectorization/RaggedToTensor/Const?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:0`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS28
6text_vectorization/RaggedToTensor/RaggedTensorToTensor?
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_55001*
Tin
2	*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_550002#
!embedding/StatefulPartitionedCall?
(global_average_pooling1d/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_550092*
(global_average_pooling1d/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_55023dense_55025*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_550222
dense/StatefulPartitionedCall?
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?	
?
/__inference_GAPooling_model_layer_call_fn_55477

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?N?
	unknown_4:	?
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_GAPooling_model_layer_call_and_return_conditional_losses_550292
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
J__inference_GAPooling_model_layer_call_and_return_conditional_losses_55394

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	4
 embedding_embedding_lookup_55379:
?N?7
$dense_matmul_readvariableop_resource:	?3
%dense_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?embedding/embedding_lookup?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
text_vectorization/SqueezeSqueezeinputs*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization/Squeeze?
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2&
$text_vectorization/StringSplit/Const?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:2.
,text_vectorization/StringSplit/StringSplitV2?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2text_vectorization/StringSplit/strided_slice/stack?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4text_vectorization/StringSplit/strided_slice/stack_1?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4text_vectorization/StringSplit/strided_slice/stack_2?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2.
,text_vectorization/StringSplit/strided_slice?
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4text_vectorization/StringSplit/strided_slice_1/stack?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_1?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_2?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask20
.text_vectorization/StringSplit/strided_slice_1?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2W
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2e
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2d
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2b
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2@
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:?????????2(
&text_vectorization/string_lookup/Equal?
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/SelectV2?
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/Identity?
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 21
/text_vectorization/RaggedToTensor/default_value?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????,      2)
'text_vectorization/RaggedToTensor/Const?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:0`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS28
6text_vectorization/RaggedToTensor/RaggedTensorToTensor?
embedding/embedding_lookupResourceGather embedding_embedding_lookup_55379?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	*3
_class)
'%loc:@embedding/embedding_lookup/55379*-
_output_shapes
:???????????*
dtype02
embedding/embedding_lookup?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/55379*-
_output_shapes
:???????????2%
#embedding/embedding_lookup/Identity?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:???????????2'
%embedding/embedding_lookup/Identity_1?
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :21
/global_average_pooling1d/Mean/reduction_indices?
global_average_pooling1d/MeanMean.embedding/embedding_lookup/Identity_1:output:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2
global_average_pooling1d/Mean?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMul&global_average_pooling1d/Mean:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/BiasAdds
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense/Sigmoidl
IdentityIdentitydense/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^embedding/embedding_lookup?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
@__inference_dense_layer_call_and_return_conditional_losses_55022

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoidf
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
@__inference_dense_layer_call_and_return_conditional_losses_55591

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoidf
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
D__inference_embedding_layer_call_and_return_conditional_losses_55551

inputs	*
embedding_lookup_55545:
?N?
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_55545inputs",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	*)
_class
loc:@embedding_lookup/55545*-
_output_shapes
:???????????*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@embedding_lookup/55545*-
_output_shapes
:???????????2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:???????????2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*-
_output_shapes
:???????????2

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:??????????: 2$
embedding_lookupembedding_lookup:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
 __inference__wrapped_model_54914
input_1_
[gapooling_model_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle`
\gapooling_model_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	<
8gapooling_model_text_vectorization_string_lookup_equal_y?
;gapooling_model_text_vectorization_string_lookup_selectv2_t	D
0gapooling_model_embedding_embedding_lookup_54899:
?N?G
4gapooling_model_dense_matmul_readvariableop_resource:	?C
5gapooling_model_dense_biasadd_readvariableop_resource:
identity??,GAPooling_model/dense/BiasAdd/ReadVariableOp?+GAPooling_model/dense/MatMul/ReadVariableOp?*GAPooling_model/embedding/embedding_lookup?NGAPooling_model/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
*GAPooling_model/text_vectorization/SqueezeSqueezeinput_1*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2,
*GAPooling_model/text_vectorization/Squeeze?
4GAPooling_model/text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 26
4GAPooling_model/text_vectorization/StringSplit/Const?
<GAPooling_model/text_vectorization/StringSplit/StringSplitV2StringSplitV23GAPooling_model/text_vectorization/Squeeze:output:0=GAPooling_model/text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:2>
<GAPooling_model/text_vectorization/StringSplit/StringSplitV2?
BGAPooling_model/text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2D
BGAPooling_model/text_vectorization/StringSplit/strided_slice/stack?
DGAPooling_model/text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2F
DGAPooling_model/text_vectorization/StringSplit/strided_slice/stack_1?
DGAPooling_model/text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2F
DGAPooling_model/text_vectorization/StringSplit/strided_slice/stack_2?
<GAPooling_model/text_vectorization/StringSplit/strided_sliceStridedSliceFGAPooling_model/text_vectorization/StringSplit/StringSplitV2:indices:0KGAPooling_model/text_vectorization/StringSplit/strided_slice/stack:output:0MGAPooling_model/text_vectorization/StringSplit/strided_slice/stack_1:output:0MGAPooling_model/text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2>
<GAPooling_model/text_vectorization/StringSplit/strided_slice?
DGAPooling_model/text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2F
DGAPooling_model/text_vectorization/StringSplit/strided_slice_1/stack?
FGAPooling_model/text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2H
FGAPooling_model/text_vectorization/StringSplit/strided_slice_1/stack_1?
FGAPooling_model/text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2H
FGAPooling_model/text_vectorization/StringSplit/strided_slice_1/stack_2?
>GAPooling_model/text_vectorization/StringSplit/strided_slice_1StridedSliceDGAPooling_model/text_vectorization/StringSplit/StringSplitV2:shape:0MGAPooling_model/text_vectorization/StringSplit/strided_slice_1/stack:output:0OGAPooling_model/text_vectorization/StringSplit/strided_slice_1/stack_1:output:0OGAPooling_model/text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2@
>GAPooling_model/text_vectorization/StringSplit/strided_slice_1?
eGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCastEGAPooling_model/text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2g
eGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
gGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1CastGGAPooling_model/text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2i
gGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
oGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeiGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2q
oGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
oGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2q
oGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
nGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdxGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0xGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2p
nGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
sGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2u
sGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
qGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterwGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0|GAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2s
qGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
nGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastuGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2p
nGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
qGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2s
qGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
mGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxiGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0zGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2o
mGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
oGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2q
oGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
mGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2vGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0xGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2o
mGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
mGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulrGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0qGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2o
mGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
qGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumkGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0qGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2s
qGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
qGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumkGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0uGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2s
qGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
qGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2s
qGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
rGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountiGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0uGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0zGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2t
rGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
lGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2n
lGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
gGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumyGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0uGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2i
gGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
pGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2r
pGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
lGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2n
lGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
gGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2yGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0mGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0uGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2i
gGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
NGAPooling_model/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2[gapooling_model_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleEGAPooling_model/text_vectorization/StringSplit/StringSplitV2:values:0\gapooling_model_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2P
NGAPooling_model/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
6GAPooling_model/text_vectorization/string_lookup/EqualEqualEGAPooling_model/text_vectorization/StringSplit/StringSplitV2:values:08gapooling_model_text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:?????????28
6GAPooling_model/text_vectorization/string_lookup/Equal?
9GAPooling_model/text_vectorization/string_lookup/SelectV2SelectV2:GAPooling_model/text_vectorization/string_lookup/Equal:z:0;gapooling_model_text_vectorization_string_lookup_selectv2_tWGAPooling_model/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2;
9GAPooling_model/text_vectorization/string_lookup/SelectV2?
9GAPooling_model/text_vectorization/string_lookup/IdentityIdentityBGAPooling_model/text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????2;
9GAPooling_model/text_vectorization/string_lookup/Identity?
?GAPooling_model/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 2A
?GAPooling_model/text_vectorization/RaggedToTensor/default_value?
7GAPooling_model/text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????,      29
7GAPooling_model/text_vectorization/RaggedToTensor/Const?
FGAPooling_model/text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor@GAPooling_model/text_vectorization/RaggedToTensor/Const:output:0BGAPooling_model/text_vectorization/string_lookup/Identity:output:0HGAPooling_model/text_vectorization/RaggedToTensor/default_value:output:0pGAPooling_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS2H
FGAPooling_model/text_vectorization/RaggedToTensor/RaggedTensorToTensor?
*GAPooling_model/embedding/embedding_lookupResourceGather0gapooling_model_embedding_embedding_lookup_54899OGAPooling_model/text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	*C
_class9
75loc:@GAPooling_model/embedding/embedding_lookup/54899*-
_output_shapes
:???????????*
dtype02,
*GAPooling_model/embedding/embedding_lookup?
3GAPooling_model/embedding/embedding_lookup/IdentityIdentity3GAPooling_model/embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*C
_class9
75loc:@GAPooling_model/embedding/embedding_lookup/54899*-
_output_shapes
:???????????25
3GAPooling_model/embedding/embedding_lookup/Identity?
5GAPooling_model/embedding/embedding_lookup/Identity_1Identity<GAPooling_model/embedding/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:???????????27
5GAPooling_model/embedding/embedding_lookup/Identity_1?
?GAPooling_model/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2A
?GAPooling_model/global_average_pooling1d/Mean/reduction_indices?
-GAPooling_model/global_average_pooling1d/MeanMean>GAPooling_model/embedding/embedding_lookup/Identity_1:output:0HGAPooling_model/global_average_pooling1d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2/
-GAPooling_model/global_average_pooling1d/Mean?
+GAPooling_model/dense/MatMul/ReadVariableOpReadVariableOp4gapooling_model_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02-
+GAPooling_model/dense/MatMul/ReadVariableOp?
GAPooling_model/dense/MatMulMatMul6GAPooling_model/global_average_pooling1d/Mean:output:03GAPooling_model/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
GAPooling_model/dense/MatMul?
,GAPooling_model/dense/BiasAdd/ReadVariableOpReadVariableOp5gapooling_model_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,GAPooling_model/dense/BiasAdd/ReadVariableOp?
GAPooling_model/dense/BiasAddBiasAdd&GAPooling_model/dense/MatMul:product:04GAPooling_model/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
GAPooling_model/dense/BiasAdd?
GAPooling_model/dense/SigmoidSigmoid&GAPooling_model/dense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
GAPooling_model/dense/Sigmoid|
IdentityIdentity!GAPooling_model/dense/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp-^GAPooling_model/dense/BiasAdd/ReadVariableOp,^GAPooling_model/dense/MatMul/ReadVariableOp+^GAPooling_model/embedding/embedding_lookupO^GAPooling_model/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2\
,GAPooling_model/dense/BiasAdd/ReadVariableOp,GAPooling_model/dense/BiasAdd/ReadVariableOp2Z
+GAPooling_model/dense/MatMul/ReadVariableOp+GAPooling_model/dense/MatMul/ReadVariableOp2X
*GAPooling_model/embedding/embedding_lookup*GAPooling_model/embedding/embedding_lookup2?
NGAPooling_model/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2NGAPooling_model/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
T
8__inference_global_average_pooling1d_layer_call_fn_55580

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_550092
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?

)__inference_embedding_layer_call_fn_55558

inputs	
unknown:
?N?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_550002
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:???????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:??????????: 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
F
__inference__creator_55623
identity: ??MutableHashTable?
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name	table_7*
value_dtype0	2
MutableHashTablei
IdentityIdentityMutableHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: 2

Identitya
NoOpNoOp^MutableHashTable*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2$
MutableHashTableMutableHashTable
?3
?
__inference__traced_save_55764
file_prefix3
/savev2_embedding_embeddings_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopJ
Fsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2L
Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop:
6savev2_adam_embedding_embeddings_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop:
6savev2_adam_embedding_embeddings_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop
savev2_const_6

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?

value?
B?
B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBLlayer_with_weights-0/_index_lookup_layer/token_counts/.ATTRIBUTES/table-keysBNlayer_with_weights-0/_index_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*=
value4B2B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_embedding_embeddings_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableopFsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1 savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop6savev2_adam_embedding_embeddings_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop6savev2_adam_embedding_embeddings_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableopsavev2_const_6"/device:CPU:0*
_output_shapes
 *#
dtypes
2		2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapesw
u: :
?N?:	?:: : : : : ::: : : : :
?N?:	?::
?N?:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
?N?:%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
::


_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
?N?:%!

_output_shapes
:	?: 

_output_shapes
::&"
 
_output_shapes
:
?N?:%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: 
?
o
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_54924

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indicesx
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????2
Meanj
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
__inference_save_fn_55652
checkpoint_keyP
Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	???MutableHashTable_lookup_table_export_values/LookupTableExportV2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::2A
?MutableHashTable_lookup_table_export_values/LookupTableExportV2T
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keys2
add/yR
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: 2
addZ
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-values2	
add_1/yX
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: 2
add_1Q
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: 2

IdentityO
ConstConst*
_output_shapes
: *
dtype0*
valueB B 2
Const\

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1?

Identity_2IdentityFMutableHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0*
_output_shapes
:2

Identity_2W

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_3S
Const_1Const*
_output_shapes
: *
dtype0*
valueB B 2	
Const_1^

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_4?

Identity_5IdentityHMutableHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0	*
_output_shapes
:2

Identity_5?
NoOpNoOp@^MutableHashTable_lookup_table_export_values/LookupTableExportV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2?MutableHashTable_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
?

?
/__inference_GAPooling_model_layer_call_fn_55185
input_1
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?N?
	unknown_4:	?
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_GAPooling_model_layer_call_and_return_conditional_losses_551492
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
%__inference_dense_layer_call_fn_55600

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_550222
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
__inference__initializer_556136
2key_value_init132_lookuptableimportv2_table_handle.
*key_value_init132_lookuptableimportv2_keys0
,key_value_init132_lookuptableimportv2_values	
identity??%key_value_init132/LookupTableImportV2?
%key_value_init132/LookupTableImportV2LookupTableImportV22key_value_init132_lookuptableimportv2_table_handle*key_value_init132_lookuptableimportv2_keys,key_value_init132_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 2'
%key_value_init132/LookupTableImportV2P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstX
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: 2

Identityv
NoOpNoOp&^key_value_init132/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?N:?N2N
%key_value_init132/LookupTableImportV2%key_value_init132/LookupTableImportV2:!

_output_shapes	
:?N:!

_output_shapes	
:?N
?
.
__inference__initializer_55628
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
__inference_<lambda>_556686
2key_value_init132_lookuptableimportv2_table_handle.
*key_value_init132_lookuptableimportv2_keys0
,key_value_init132_lookuptableimportv2_values	
identity??%key_value_init132/LookupTableImportV2?
%key_value_init132/LookupTableImportV2LookupTableImportV22key_value_init132_lookuptableimportv2_table_handle*key_value_init132_lookuptableimportv2_keys,key_value_init132_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 2'
%key_value_init132/LookupTableImportV2S
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ConstX
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: 2

Identityv
NoOpNoOp&^key_value_init132/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?N:?N2N
%key_value_init132/LookupTableImportV2%key_value_init132/LookupTableImportV2:!

_output_shapes	
:?N:!

_output_shapes	
:?N
?y
?
J__inference_GAPooling_model_layer_call_and_return_conditional_losses_55244
input_1O
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	#
embedding_55234:
?N?
dense_55238:	?
dense_55240:
identity??dense/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
text_vectorization/SqueezeSqueezeinput_1*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization/Squeeze?
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2&
$text_vectorization/StringSplit/Const?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:2.
,text_vectorization/StringSplit/StringSplitV2?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2text_vectorization/StringSplit/strided_slice/stack?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4text_vectorization/StringSplit/strided_slice/stack_1?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4text_vectorization/StringSplit/strided_slice/stack_2?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2.
,text_vectorization/StringSplit/strided_slice?
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4text_vectorization/StringSplit/strided_slice_1/stack?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_1?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_2?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask20
.text_vectorization/StringSplit/strided_slice_1?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2W
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2e
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2d
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2b
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2@
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:?????????2(
&text_vectorization/string_lookup/Equal?
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/SelectV2?
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/Identity?
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 21
/text_vectorization/RaggedToTensor/default_value?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????,      2)
'text_vectorization/RaggedToTensor/Const?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:0`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS28
6text_vectorization/RaggedToTensor/RaggedTensorToTensor?
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_55234*
Tin
2	*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_550002#
!embedding/StatefulPartitionedCall?
(global_average_pooling1d/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_550092*
(global_average_pooling1d/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_55238dense_55240*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_550222
dense/StatefulPartitionedCall?
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
*
__inference_<lambda>_55673
identityS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?	
?
/__inference_GAPooling_model_layer_call_fn_55496

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?N?
	unknown_4:	?
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_GAPooling_model_layer_call_and_return_conditional_losses_551492
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?V
?
!__inference__traced_restore_55831
file_prefix9
%assignvariableop_embedding_embeddings:
?N?2
assignvariableop_1_dense_kernel:	?+
assignvariableop_2_dense_bias:&
assignvariableop_3_adam_iter:	 (
assignvariableop_4_adam_beta_1: (
assignvariableop_5_adam_beta_2: '
assignvariableop_6_adam_decay: /
%assignvariableop_7_adam_learning_rate: M
Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtable: "
assignvariableop_8_total: "
assignvariableop_9_count: %
assignvariableop_10_total_1: %
assignvariableop_11_count_1: C
/assignvariableop_12_adam_embedding_embeddings_m:
?N?:
'assignvariableop_13_adam_dense_kernel_m:	?3
%assignvariableop_14_adam_dense_bias_m:C
/assignvariableop_15_adam_embedding_embeddings_v:
?N?:
'assignvariableop_16_adam_dense_kernel_v:	?3
%assignvariableop_17_adam_dense_bias_v:
identity_19??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?2MutableHashTable_table_restore/LookupTableImportV2?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?

value?
B?
B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBLlayer_with_weights-0/_index_lookup_layer/token_counts/.ATTRIBUTES/table-keysBNlayer_with_weights-0/_index_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*=
value4B2B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*h
_output_shapesV
T:::::::::::::::::::::*#
dtypes
2		2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_iterIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_1Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_2Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_decayIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp%assignvariableop_7_adam_learning_rateIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtableRestoreV2:tensors:8RestoreV2:tensors:9*	
Tin0*

Tout0	*#
_class
loc:@MutableHashTable*
_output_shapes
 24
2MutableHashTable_table_restore/LookupTableImportV2l

Identity_8IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_totalIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8l

Identity_9IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_countIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_total_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_count_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_adam_embedding_embeddings_mIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp'assignvariableop_13_adam_dense_kernel_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp%assignvariableop_14_adam_dense_bias_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_adam_embedding_embeddings_vIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp'assignvariableop_16_adam_dense_kernel_vIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp%assignvariableop_17_adam_dense_bias_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_179
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_18Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_18f
Identity_19IdentityIdentity_18:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_19?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_19Identity_19:output:0*;
_input_shapes*
(: : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:)	%
#
_class
loc:@MutableHashTable
?y
?
J__inference_GAPooling_model_layer_call_and_return_conditional_losses_55303
input_1O
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	#
embedding_55293:
?N?
dense_55297:	?
dense_55299:
identity??dense/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
text_vectorization/SqueezeSqueezeinput_1*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization/Squeeze?
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2&
$text_vectorization/StringSplit/Const?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:2.
,text_vectorization/StringSplit/StringSplitV2?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2text_vectorization/StringSplit/strided_slice/stack?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4text_vectorization/StringSplit/strided_slice/stack_1?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4text_vectorization/StringSplit/strided_slice/stack_2?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2.
,text_vectorization/StringSplit/strided_slice?
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4text_vectorization/StringSplit/strided_slice_1/stack?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_1?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_2?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask20
.text_vectorization/StringSplit/strided_slice_1?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2W
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2e
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2d
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2b
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2@
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:?????????2(
&text_vectorization/string_lookup/Equal?
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/SelectV2?
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/Identity?
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 21
/text_vectorization/RaggedToTensor/default_value?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????,      2)
'text_vectorization/RaggedToTensor/Const?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:0`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS28
6text_vectorization/RaggedToTensor/RaggedTensorToTensor?
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_55293*
Tin
2	*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_550002#
!embedding/StatefulPartitionedCall?
(global_average_pooling1d/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_550092*
(global_average_pooling1d/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_55297dense_55299*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_550222
dense/StatefulPartitionedCall?
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
T
8__inference_global_average_pooling1d_layer_call_fn_55575

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_549242
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?R
?
__inference_adapt_step_55542
iterator

iterator_19
5none_lookup_table_find_lookuptablefindv2_table_handle:
6none_lookup_table_find_lookuptablefindv2_default_value	??IteratorGetNext?(None_lookup_table_find/LookupTableFindV2?,None_lookup_table_insert/LookupTableInsertV2?
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*#
_output_shapes
:?????????*"
output_shapes
:?????????*
output_types
22
IteratorGetNextg
StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2
StringSplit/Const?
StringSplit/StringSplitV2StringSplitV2IteratorGetNext:components:0StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:2
StringSplit/StringSplitV2?
StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
StringSplit/strided_slice/stack?
!StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2#
!StringSplit/strided_slice/stack_1?
!StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!StringSplit/strided_slice/stack_2?
StringSplit/strided_sliceStridedSlice#StringSplit/StringSplitV2:indices:0(StringSplit/strided_slice/stack:output:0*StringSplit/strided_slice/stack_1:output:0*StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
StringSplit/strided_slice?
!StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!StringSplit/strided_slice_1/stack?
#StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#StringSplit/strided_slice_1/stack_1?
#StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#StringSplit/strided_slice_1/stack_2?
StringSplit/strided_slice_1StridedSlice!StringSplit/StringSplitV2:shape:0*StringSplit/strided_slice_1/stack:output:0,StringSplit/strided_slice_1/stack_1:output:0,StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2
StringSplit/strided_slice_1?
BStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast"StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2D
BStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast$StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2F
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2N
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2N
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdUStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2M
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
PStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2R
PStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterTStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0YStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2P
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastRStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2M
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2P
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2L
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2N
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2SStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2L
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulOStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2L
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2P
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2P
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2P
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
OStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2Q
OStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2K
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumVStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2F
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
MStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2O
MStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2K
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2VStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2F
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
UniqueWithCountsUniqueWithCounts"StringSplit/StringSplitV2:values:0*
T0*A
_output_shapes/
-:?????????:?????????:?????????*
out_idx0	2
UniqueWithCounts?
(None_lookup_table_find/LookupTableFindV2LookupTableFindV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:06none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
:2*
(None_lookup_table_find/LookupTableFindV2?
addAddV2UniqueWithCounts:count:01None_lookup_table_find/LookupTableFindV2:values:0*
T0	*
_output_shapes
:2
add?
,None_lookup_table_insert/LookupTableInsertV2LookupTableInsertV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:0add:z:0)^None_lookup_table_find/LookupTableFindV2",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 2.
,None_lookup_table_insert/LookupTableInsertV2*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : 2"
IteratorGetNextIteratorGetNext2T
(None_lookup_table_find/LookupTableFindV2(None_lookup_table_find/LookupTableFindV22\
,None_lookup_table_insert/LookupTableInsertV2,None_lookup_table_insert/LookupTableInsertV2:( $
"
_user_specified_name
iterator:@<

_output_shapes
: 
"
_user_specified_name
iterator:

_output_shapes
: 
?

?
/__inference_GAPooling_model_layer_call_fn_55046
input_1
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?N?
	unknown_4:	?
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_GAPooling_model_layer_call_and_return_conditional_losses_550292
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
o
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_55570

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indicesp
MeanMeaninputsMean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2
Meanb
IdentityIdentityMean:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
,
__inference__destroyer_55633
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?y
?
J__inference_GAPooling_model_layer_call_and_return_conditional_losses_55149

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	#
embedding_55139:
?N?
dense_55143:	?
dense_55145:
identity??dense/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
text_vectorization/SqueezeSqueezeinputs*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization/Squeeze?
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2&
$text_vectorization/StringSplit/Const?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:2.
,text_vectorization/StringSplit/StringSplitV2?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2text_vectorization/StringSplit/strided_slice/stack?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4text_vectorization/StringSplit/strided_slice/stack_1?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4text_vectorization/StringSplit/strided_slice/stack_2?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2.
,text_vectorization/StringSplit/strided_slice?
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4text_vectorization/StringSplit/strided_slice_1/stack?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_1?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_2?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask20
.text_vectorization/StringSplit/strided_slice_1?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2W
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2e
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2d
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2b
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2@
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:?????????2(
&text_vectorization/string_lookup/Equal?
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/SelectV2?
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/Identity?
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 21
/text_vectorization/RaggedToTensor/default_value?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????,      2)
'text_vectorization/RaggedToTensor/Const?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:0`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS28
6text_vectorization/RaggedToTensor/RaggedTensorToTensor?
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_55139*
Tin
2	*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_550002#
!embedding/StatefulPartitionedCall?
(global_average_pooling1d/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_550092*
(global_average_pooling1d/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_55143dense_55145*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_550222
dense/StatefulPartitionedCall?
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?	
?
__inference_restore_fn_55660
restored_tensors_0
restored_tensors_1	C
?mutablehashtable_table_restore_lookuptableimportv2_table_handle
identity??2MutableHashTable_table_restore/LookupTableImportV2?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2?mutablehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 24
2MutableHashTable_table_restore/LookupTableImportV2P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstX
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
?

?
D__inference_embedding_layer_call_and_return_conditional_losses_55000

inputs	*
embedding_lookup_54994:
?N?
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_54994inputs",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	*)
_class
loc:@embedding_lookup/54994*-
_output_shapes
:???????????*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@embedding_lookup/54994*-
_output_shapes
:???????????2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:???????????2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*-
_output_shapes
:???????????2

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:??????????: 2$
embedding_lookupembedding_lookup:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
,
__inference__destroyer_55618
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes "?L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
;
input_10
serving_default_input_1:0?????????;
dense2
StatefulPartitionedCall_1:0?????????tensorflow/serving/predict:?i
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
	optimizer
trainable_variables
	variables
	regularization_losses

	keras_api

signatures
*K&call_and_return_all_conditional_losses
L_default_save_signature
M__call__"
_tf_keras_network
"
_tf_keras_input_layer
V
_index_lookup_layer
	keras_api
N_adapt_function"
_tf_keras_layer
?

embeddings
trainable_variables
	variables
regularization_losses
	keras_api
*O&call_and_return_all_conditional_losses
P__call__"
_tf_keras_layer
?
trainable_variables
	variables
regularization_losses
	keras_api
*Q&call_and_return_all_conditional_losses
R__call__"
_tf_keras_layer
?

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
*S&call_and_return_all_conditional_losses
T__call__"
_tf_keras_layer
?
iter

beta_1

beta_2
	 decay
!learning_ratemEmFmGvHvIvJ"
	optimizer
5
0
1
2"
trackable_list_wrapper
5
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
"non_trainable_variables
#layer_metrics
trainable_variables

$layers
%metrics
	variables
&layer_regularization_losses
	regularization_losses
M__call__
L_default_save_signature
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
,
Userving_default"
signature_map
L
'lookup_table
(token_counts
)	keras_api"
_tf_keras_layer
"
_generic_user_object
(:&
?N?2embedding/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
*non_trainable_variables
+layer_metrics

,layers
-metrics
trainable_variables
	variables
.layer_regularization_losses
regularization_losses
P__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
/non_trainable_variables
0layer_metrics

1layers
2metrics
trainable_variables
	variables
3layer_regularization_losses
regularization_losses
R__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
:	?2dense/kernel
:2
dense/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
4non_trainable_variables
5layer_metrics

6layers
7metrics
trainable_variables
	variables
8layer_regularization_losses
regularization_losses
T__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
R
;_initializer
V_create_resource
W_initialize
X_destroy_resourceR 
O
Y_create_resource
Z_initialize
[_destroy_resourceR Z
table\]
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
N
	<total
	=count
>	variables
?	keras_api"
_tf_keras_metric
^
	@total
	Acount
B
_fn_kwargs
C	variables
D	keras_api"
_tf_keras_metric
"
_generic_user_object
:  (2total
:  (2count
.
<0
=1"
trackable_list_wrapper
-
>	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
@0
A1"
trackable_list_wrapper
-
C	variables"
_generic_user_object
-:+
?N?2Adam/embedding/embeddings/m
$:"	?2Adam/dense/kernel/m
:2Adam/dense/bias/m
-:+
?N?2Adam/embedding/embeddings/v
$:"	?2Adam/dense/kernel/v
:2Adam/dense/bias/v
?2?
J__inference_GAPooling_model_layer_call_and_return_conditional_losses_55394
J__inference_GAPooling_model_layer_call_and_return_conditional_losses_55458
J__inference_GAPooling_model_layer_call_and_return_conditional_losses_55244
J__inference_GAPooling_model_layer_call_and_return_conditional_losses_55303?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
 __inference__wrapped_model_54914input_1"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_GAPooling_model_layer_call_fn_55046
/__inference_GAPooling_model_layer_call_fn_55477
/__inference_GAPooling_model_layer_call_fn_55496
/__inference_GAPooling_model_layer_call_fn_55185?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
__inference_adapt_step_55542?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_embedding_layer_call_and_return_conditional_losses_55551?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_embedding_layer_call_fn_55558?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_55564
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_55570?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
8__inference_global_average_pooling1d_layer_call_fn_55575
8__inference_global_average_pooling1d_layer_call_fn_55580?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_dense_layer_call_and_return_conditional_losses_55591?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
%__inference_dense_layer_call_fn_55600?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference_signature_wrapper_55330input_1"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference__creator_55605?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_55613?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_55618?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__creator_55623?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_55628?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_55633?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference_save_fn_55652checkpoint_key"?
???
FullArgSpec
args?
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?	
? 
?B?
__inference_restore_fn_55660restored_tensors_0restored_tensors_1"?
???
FullArgSpec
args? 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
	?	
	J
Const
J	
Const_1
J	
Const_2
J	
Const_3
J	
Const_4
J	
Const_5?
J__inference_GAPooling_model_layer_call_and_return_conditional_losses_55244j'^_`8?5
.?+
!?
input_1?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_GAPooling_model_layer_call_and_return_conditional_losses_55303j'^_`8?5
.?+
!?
input_1?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_GAPooling_model_layer_call_and_return_conditional_losses_55394i'^_`7?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_GAPooling_model_layer_call_and_return_conditional_losses_55458i'^_`7?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
/__inference_GAPooling_model_layer_call_fn_55046]'^_`8?5
.?+
!?
input_1?????????
p 

 
? "???????????
/__inference_GAPooling_model_layer_call_fn_55185]'^_`8?5
.?+
!?
input_1?????????
p

 
? "???????????
/__inference_GAPooling_model_layer_call_fn_55477\'^_`7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
/__inference_GAPooling_model_layer_call_fn_55496\'^_`7?4
-?*
 ?
inputs?????????
p

 
? "??????????6
__inference__creator_55605?

? 
? "? 6
__inference__creator_55623?

? 
? "? 8
__inference__destroyer_55618?

? 
? "? 8
__inference__destroyer_55633?

? 
? "? ?
__inference__initializer_55613'bc?

? 
? "? :
__inference__initializer_55628?

? 
? "? ?
 __inference__wrapped_model_54914j'^_`0?-
&?#
!?
input_1?????????
? "-?*
(
dense?
dense?????????g
__inference_adapt_step_55542G(a=?:
3?0
.?+?
??????????IteratorSpec
? "
 ?
@__inference_dense_layer_call_and_return_conditional_losses_55591]0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? y
%__inference_dense_layer_call_fn_55600P0?-
&?#
!?
inputs??????????
? "???????????
D__inference_embedding_layer_call_and_return_conditional_losses_55551b0?-
&?#
!?
inputs??????????	
? "+?(
!?
0???????????
? ?
)__inference_embedding_layer_call_fn_55558U0?-
&?#
!?
inputs??????????	
? "?????????????
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_55564{I?F
??<
6?3
inputs'???????????????????????????

 
? ".?+
$?!
0??????????????????
? ?
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_55570c9?6
/?,
&?#
inputs???????????

 
? "&?#
?
0??????????
? ?
8__inference_global_average_pooling1d_layer_call_fn_55575nI?F
??<
6?3
inputs'???????????????????????????

 
? "!????????????????????
8__inference_global_average_pooling1d_layer_call_fn_55580V9?6
/?,
&?#
inputs???????????

 
? "???????????y
__inference_restore_fn_55660Y(K?H
A?>
?
restored_tensors_0
?
restored_tensors_1	
? "? ?
__inference_save_fn_55652?(&?#
?
?
checkpoint_key 
? "???
`?]

name?
0/name 
#

slice_spec?
0/slice_spec 

tensor?
0/tensor
`?]

name?
1/name 
#

slice_spec?
1/slice_spec 

tensor?
1/tensor	?
#__inference_signature_wrapper_55330u'^_`;?8
? 
1?.
,
input_1!?
input_1?????????"-?*
(
dense?
dense?????????