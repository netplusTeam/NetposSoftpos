.class public Lorg/apache/commons/codec/language/Soundex;
.super Ljava/lang/Object;
.source "Soundex.java"

# interfaces
.implements Lorg/apache/commons/codec/StringEncoder;


# static fields
.field public static final SILENT_MARKER:C = '-'

.field public static final US_ENGLISH:Lorg/apache/commons/codec/language/Soundex;

.field public static final US_ENGLISH_GENEALOGY:Lorg/apache/commons/codec/language/Soundex;

.field private static final US_ENGLISH_MAPPING:[C

.field public static final US_ENGLISH_MAPPING_STRING:Ljava/lang/String; = "01230120022455012623010202"

.field public static final US_ENGLISH_SIMPLIFIED:Lorg/apache/commons/codec/language/Soundex;


# instance fields
.field private maxLength:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final soundexMapping:[C

.field private final specialCaseHW:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 65
    const-string v0, "01230120022455012623010202"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lorg/apache/commons/codec/language/Soundex;->US_ENGLISH_MAPPING:[C

    .line 75
    new-instance v1, Lorg/apache/commons/codec/language/Soundex;

    invoke-direct {v1}, Lorg/apache/commons/codec/language/Soundex;-><init>()V

    sput-object v1, Lorg/apache/commons/codec/language/Soundex;->US_ENGLISH:Lorg/apache/commons/codec/language/Soundex;

    .line 88
    new-instance v1, Lorg/apache/commons/codec/language/Soundex;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/codec/language/Soundex;-><init>(Ljava/lang/String;Z)V

    sput-object v1, Lorg/apache/commons/codec/language/Soundex;->US_ENGLISH_SIMPLIFIED:Lorg/apache/commons/codec/language/Soundex;

    .line 103
    new-instance v0, Lorg/apache/commons/codec/language/Soundex;

    const-string v1, "-123-12--22455-12623-1-2-2"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/language/Soundex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/codec/language/Soundex;->US_ENGLISH_GENEALOGY:Lorg/apache/commons/codec/language/Soundex;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/codec/language/Soundex;->maxLength:I

    .line 136
    sget-object v0, Lorg/apache/commons/codec/language/Soundex;->US_ENGLISH_MAPPING:[C

    iput-object v0, p0, Lorg/apache/commons/codec/language/Soundex;->soundexMapping:[C

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/codec/language/Soundex;->specialCaseHW:Z

    .line 138
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "mapping"    # Ljava/lang/String;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/codec/language/Soundex;->maxLength:I

    .line 178
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/codec/language/Soundex;->soundexMapping:[C

    .line 179
    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/Soundex;->hasMarker([C)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/codec/language/Soundex;->specialCaseHW:Z

    .line 180
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "mapping"    # Ljava/lang/String;
    .param p2, "specialCaseHW"    # Z

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/codec/language/Soundex;->maxLength:I

    .line 192
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/codec/language/Soundex;->soundexMapping:[C

    .line 193
    iput-boolean p2, p0, Lorg/apache/commons/codec/language/Soundex;->specialCaseHW:Z

    .line 194
    return-void
.end method

.method public constructor <init>([C)V
    .locals 3
    .param p1, "mapping"    # [C

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/codec/language/Soundex;->maxLength:I

    .line 153
    array-length v0, p1

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/commons/codec/language/Soundex;->soundexMapping:[C

    .line 154
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/Soundex;->hasMarker([C)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/codec/language/Soundex;->specialCaseHW:Z

    .line 156
    return-void
.end method

.method private hasMarker([C)Z
    .locals 5
    .param p1, "mapping"    # [C

    .line 159
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-char v3, p1, v2

    .line 160
    .local v3, "ch":C
    const/16 v4, 0x2d

    if-ne v3, v4, :cond_0

    .line 161
    const/4 v0, 0x1

    return v0

    .line 159
    .end local v3    # "ch":C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    :cond_1
    return v1
.end method

.method private map(C)C
    .locals 4
    .param p1, "ch"    # C

    .line 275
    add-int/lit8 v0, p1, -0x41

    .line 276
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/apache/commons/codec/language/Soundex;->soundexMapping:[C

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 279
    aget-char v1, v1, v0

    return v1

    .line 277
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The character is not mapped: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public difference(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 216
    invoke-static {p0, p1, p2}, Lorg/apache/commons/codec/language/SoundexUtils;->difference(Lorg/apache/commons/codec/StringEncoder;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 234
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 237
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/language/Soundex;->soundex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 235
    :cond_0
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to Soundex encode is not of type java.lang.String"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 251
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/Soundex;->soundex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxLength()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 262
    iget v0, p0, Lorg/apache/commons/codec/language/Soundex;->maxLength:I

    return v0
.end method

.method public setMaxLength(I)V
    .locals 0
    .param p1, "maxLength"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 291
    iput p1, p0, Lorg/apache/commons/codec/language/Soundex;->maxLength:I

    .line 292
    return-void
.end method

.method public soundex(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "str"    # Ljava/lang/String;

    .line 304
    if-nez p1, :cond_0

    .line 305
    const/4 v0, 0x0

    return-object v0

    .line 307
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/codec/language/SoundexUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 308
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 309
    return-object p1

    .line 311
    :cond_1
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 312
    .local v0, "out":[C
    const/4 v1, 0x0

    .line 313
    .local v1, "count":I
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 314
    .local v2, "first":C
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "count":I
    .local v3, "count":I
    aput-char v2, v0, v1

    .line 315
    invoke-direct {p0, v2}, Lorg/apache/commons/codec/language/Soundex;->map(C)C

    move-result v1

    .line 316
    .local v1, "lastDigit":C
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_6

    array-length v5, v0

    if-ge v3, v5, :cond_6

    .line 317
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 318
    .local v5, "ch":C
    iget-boolean v6, p0, Lorg/apache/commons/codec/language/Soundex;->specialCaseHW:Z

    if-eqz v6, :cond_2

    const/16 v6, 0x48

    if-eq v5, v6, :cond_5

    const/16 v6, 0x57

    if-ne v5, v6, :cond_2

    .line 319
    goto :goto_1

    .line 321
    :cond_2
    invoke-direct {p0, v5}, Lorg/apache/commons/codec/language/Soundex;->map(C)C

    move-result v6

    .line 322
    .local v6, "digit":C
    const/16 v7, 0x2d

    if-ne v6, v7, :cond_3

    .line 323
    goto :goto_1

    .line 325
    :cond_3
    const/16 v7, 0x30

    if-eq v6, v7, :cond_4

    if-eq v6, v1, :cond_4

    .line 326
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "count":I
    .local v7, "count":I
    aput-char v6, v0, v3

    move v3, v7

    .line 328
    .end local v7    # "count":I
    .restart local v3    # "count":I
    :cond_4
    move v1, v6

    .line 316
    .end local v5    # "ch":C
    .end local v6    # "digit":C
    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 330
    .end local v4    # "i":I
    :cond_6
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    return-object v4

    :array_0
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
    .end array-data
.end method
