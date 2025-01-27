.class public Lcom/itextpdf/io/font/FontProgramDescriptor;
.super Ljava/lang/Object;
.source "FontProgramDescriptor.java"


# static fields
.field private static final TT_FAMILY_ORDER:[Ljava/lang/String;


# instance fields
.field private final familyNameEnglishOpenType:Ljava/lang/String;

.field private final familyNameLowerCase:Ljava/lang/String;

.field private final fontName:Ljava/lang/String;

.field private final fontNameLowerCase:Ljava/lang/String;

.field private final fullNameLowerCase:Ljava/lang/String;

.field private final fullNamesAllLangs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final fullNamesEnglishOpenType:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final isMonospace:Z

.field private final italicAngle:F

.field private final macStyle:I

.field private final style:Ljava/lang/String;

.field private final weight:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 75
    const-string v0, "3"

    const-string v1, "1"

    const-string v2, "1033"

    const-string v3, "3"

    const-string v4, "0"

    const-string v5, "1033"

    const-string v6, "1"

    const-string v7, "0"

    const-string v8, "0"

    const-string v9, "0"

    const-string v10, "3"

    const-string v11, "0"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/font/FontProgramDescriptor;->TT_FAMILY_ORDER:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/itextpdf/io/font/FontNames;FZ)V
    .locals 3
    .param p1, "fontNames"    # Lcom/itextpdf/io/font/FontNames;
    .param p2, "italicAngle"    # F
    .param p3, "isMonospace"    # Z

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p1}, Lcom/itextpdf/io/font/FontNames;->getFontName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/font/FontProgramDescriptor;->fontName:Ljava/lang/String;

    .line 84
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/font/FontProgramDescriptor;->fontNameLowerCase:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Lcom/itextpdf/io/font/FontNames;->getFullName()[[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, 0x3

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/font/FontProgramDescriptor;->fullNameLowerCase:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Lcom/itextpdf/io/font/FontNames;->getFamilyName()[[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/io/font/FontNames;->getFamilyName()[[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/io/font/FontNames;->getFamilyName()[[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/itextpdf/io/font/FontProgramDescriptor;->familyNameLowerCase:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Lcom/itextpdf/io/font/FontNames;->getStyle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/font/FontProgramDescriptor;->style:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Lcom/itextpdf/io/font/FontNames;->getFontWeight()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/font/FontProgramDescriptor;->weight:I

    .line 89
    invoke-virtual {p1}, Lcom/itextpdf/io/font/FontNames;->getMacStyle()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/font/FontProgramDescriptor;->macStyle:I

    .line 90
    iput p2, p0, Lcom/itextpdf/io/font/FontProgramDescriptor;->italicAngle:F

    .line 91
    iput-boolean p3, p0, Lcom/itextpdf/io/font/FontProgramDescriptor;->isMonospace:Z

    .line 92
    invoke-direct {p0, p1}, Lcom/itextpdf/io/font/FontProgramDescriptor;->extractFamilyNameEnglishOpenType(Lcom/itextpdf/io/font/FontNames;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/font/FontProgramDescriptor;->familyNameEnglishOpenType:Ljava/lang/String;

    .line 93
    invoke-direct {p0, p1}, Lcom/itextpdf/io/font/FontProgramDescriptor;->extractFullFontNames(Lcom/itextpdf/io/font/FontNames;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/font/FontProgramDescriptor;->fullNamesAllLangs:Ljava/util/Set;

    .line 94
    invoke-direct {p0, p1}, Lcom/itextpdf/io/font/FontProgramDescriptor;->extractFullNamesEnglishOpenType(Lcom/itextpdf/io/font/FontNames;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/font/FontProgramDescriptor;->fullNamesEnglishOpenType:Ljava/util/Set;

    .line 95
    return-void
.end method

.method constructor <init>(Lcom/itextpdf/io/font/FontNames;Lcom/itextpdf/io/font/FontMetrics;)V
    .locals 2
    .param p1, "fontNames"    # Lcom/itextpdf/io/font/FontNames;
    .param p2, "fontMetrics"    # Lcom/itextpdf/io/font/FontMetrics;

    .line 98
    invoke-virtual {p2}, Lcom/itextpdf/io/font/FontMetrics;->getItalicAngle()F

    move-result v0

    invoke-virtual {p2}, Lcom/itextpdf/io/font/FontMetrics;->isFixedPitch()Z

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/itextpdf/io/font/FontProgramDescriptor;-><init>(Lcom/itextpdf/io/font/FontNames;FZ)V

    .line 99
    return-void
.end method

.method private extractFamilyNameEnglishOpenType(Lcom/itextpdf/io/font/FontNames;)Ljava/lang/String;
    .locals 9
    .param p1, "fontNames"    # Lcom/itextpdf/io/font/FontNames;

    .line 155
    invoke-virtual {p1}, Lcom/itextpdf/io/font/FontNames;->getFamilyName()[[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 156
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    sget-object v1, Lcom/itextpdf/io/font/FontProgramDescriptor;->TT_FAMILY_ORDER:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 157
    invoke-virtual {p1}, Lcom/itextpdf/io/font/FontNames;->getFamilyName()[[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 158
    .local v5, "name":[Ljava/lang/String;
    sget-object v6, Lcom/itextpdf/io/font/FontProgramDescriptor;->TT_FAMILY_ORDER:[Ljava/lang/String;

    aget-object v7, v6, v0

    aget-object v8, v5, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v7, v0, 0x1

    aget-object v7, v6, v7

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v7, v0, 0x2

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 159
    const/4 v1, 0x3

    aget-object v1, v5, v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 157
    .end local v5    # "name":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 156
    :cond_1
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 164
    .end local v0    # "k":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private extractFullFontNames(Lcom/itextpdf/io/font/FontNames;)Ljava/util/Set;
    .locals 6
    .param p1, "fontNames"    # Lcom/itextpdf/io/font/FontNames;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/io/font/FontNames;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 149
    .local v0, "uniqueFullNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/itextpdf/io/font/FontNames;->getFullName()[[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 150
    .local v4, "fullName":[Ljava/lang/String;
    const/4 v5, 0x3

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    .end local v4    # "fullName":[Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 151
    :cond_0
    return-object v0
.end method

.method private extractFullNamesEnglishOpenType(Lcom/itextpdf/io/font/FontNames;)Ljava/util/Set;
    .locals 10
    .param p1, "fontNames"    # Lcom/itextpdf/io/font/FontNames;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/io/font/FontNames;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgramDescriptor;->familyNameEnglishOpenType:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 169
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 170
    .local v0, "uniqueTtfSuitableFullNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/itextpdf/io/font/FontNames;->getFullName()[[Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "names":[[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 172
    .local v5, "name":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_1
    sget-object v7, Lcom/itextpdf/io/font/FontProgramDescriptor;->TT_FAMILY_ORDER:[Ljava/lang/String;

    array-length v8, v7

    if-ge v6, v8, :cond_1

    .line 173
    aget-object v8, v7, v6

    aget-object v9, v5, v3

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    add-int/lit8 v8, v6, 0x1

    aget-object v8, v7, v8

    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    add-int/lit8 v8, v6, 0x2

    aget-object v7, v7, v8

    const/4 v8, 0x2

    aget-object v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 174
    const/4 v7, 0x3

    aget-object v7, v5, v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    goto :goto_2

    .line 172
    :cond_0
    add-int/lit8 v6, v6, 0x3

    goto :goto_1

    .line 171
    .end local v5    # "name":[Ljava/lang/String;
    .end local v6    # "k":I
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 179
    :cond_2
    return-object v0

    .line 181
    .end local v0    # "uniqueTtfSuitableFullNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "names":[[Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method


# virtual methods
.method getFamilyNameEnglishOpenType()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgramDescriptor;->familyNameEnglishOpenType:Ljava/lang/String;

    return-object v0
.end method

.method public getFamilyNameLowerCase()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgramDescriptor;->familyNameLowerCase:Ljava/lang/String;

    return-object v0
.end method

.method public getFontName()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgramDescriptor;->fontName:Ljava/lang/String;

    return-object v0
.end method

.method public getFontNameLowerCase()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgramDescriptor;->fontNameLowerCase:Ljava/lang/String;

    return-object v0
.end method

.method public getFontWeight()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/itextpdf/io/font/FontProgramDescriptor;->weight:I

    return v0
.end method

.method public getFullNameAllLangs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgramDescriptor;->fullNamesAllLangs:Ljava/util/Set;

    return-object v0
.end method

.method public getFullNameLowerCase()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgramDescriptor;->fullNameLowerCase:Ljava/lang/String;

    return-object v0
.end method

.method public getFullNamesEnglishOpenType()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgramDescriptor;->fullNamesEnglishOpenType:Ljava/util/Set;

    return-object v0
.end method

.method public getItalicAngle()F
    .locals 1

    .line 114
    iget v0, p0, Lcom/itextpdf/io/font/FontProgramDescriptor;->italicAngle:F

    return v0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgramDescriptor;->style:Ljava/lang/String;

    return-object v0
.end method

.method public isBold()Z
    .locals 2

    .line 122
    iget v0, p0, Lcom/itextpdf/io/font/FontProgramDescriptor;->macStyle:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isItalic()Z
    .locals 1

    .line 126
    iget v0, p0, Lcom/itextpdf/io/font/FontProgramDescriptor;->macStyle:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMonospace()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/itextpdf/io/font/FontProgramDescriptor;->isMonospace:Z

    return v0
.end method
