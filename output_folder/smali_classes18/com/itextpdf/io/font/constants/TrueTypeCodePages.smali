.class public final Lcom/itextpdf/io/font/constants/TrueTypeCodePages;
.super Ljava/lang/Object;
.source "TrueTypeCodePages.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CODE_PAGES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 64

    .line 48
    nop

    .line 53
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const-string v0, "1252 Latin 1"

    const-string v1, "1250 Latin 2: Eastern Europe"

    const-string v2, "1251 Cyrillic"

    const-string v3, "1253 Greek"

    const-string v4, "1254 Turkish"

    const-string v5, "1255 Hebrew"

    const-string v6, "1256 Arabic"

    const-string v7, "1257 Windows Baltic"

    const-string v8, "1258 Vietnamese"

    const-string v16, "874 Thai"

    const-string v17, "932 JIS/Japan"

    const-string v18, "936 Chinese: Simplified chars--PRC and Singapore"

    const-string v19, "949 Korean Wansung"

    const-string v20, "950 Chinese: Traditional chars--Taiwan and Hong Kong"

    const-string v21, "1361 Korean Johab"

    const-string v29, "Macintosh Character Set (US Roman)"

    const-string v30, "OEM Character Set"

    const-string v31, "Symbol Character Set"

    const-string v48, "869 IBM Greek"

    const-string v49, "866 MS-DOS Russian"

    const-string v50, "865 MS-DOS Nordic"

    const-string v51, "864 Arabic"

    const-string v52, "863 MS-DOS Canadian French"

    const-string v53, "862 Hebrew"

    const-string v54, "861 MS-DOS Icelandic"

    const-string v55, "860 MS-DOS Portuguese"

    const-string v56, "857 IBM Turkish"

    const-string v57, "855 IBM Cyrillic; primarily Russian"

    const-string v58, "852 Latin 2"

    const-string v59, "775 MS-DOS Baltic"

    const-string v60, "737 Greek; former 437 G"

    const-string v61, "708 Arabic; ASMO 708"

    const-string v62, "850 WE/Latin 1"

    const-string v63, "437 US"

    filled-new-array/range {v0 .. v63}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/font/constants/TrueTypeCodePages;->CODE_PAGES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static get(I)Ljava/lang/String;
    .locals 1
    .param p0, "bit"    # I

    .line 127
    if-ltz p0, :cond_0

    const/16 v0, 0x40

    if-ge p0, v0, :cond_0

    .line 128
    sget-object v0, Lcom/itextpdf/io/font/constants/TrueTypeCodePages;->CODE_PAGES:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
