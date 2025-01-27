.class public final enum Lcom/solab/iso8583/IsoType;
.super Ljava/lang/Enum;
.source "IsoType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/solab/iso8583/IsoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/solab/iso8583/IsoType;

.field public static final enum ALPHA:Lcom/solab/iso8583/IsoType;

.field public static final enum AMOUNT:Lcom/solab/iso8583/IsoType;

.field public static final enum BINARY:Lcom/solab/iso8583/IsoType;

.field public static final enum DATE10:Lcom/solab/iso8583/IsoType;

.field public static final enum DATE12:Lcom/solab/iso8583/IsoType;

.field public static final enum DATE14:Lcom/solab/iso8583/IsoType;

.field public static final enum DATE4:Lcom/solab/iso8583/IsoType;

.field public static final enum DATE6:Lcom/solab/iso8583/IsoType;

.field public static final enum DATE_EXP:Lcom/solab/iso8583/IsoType;

.field public static final enum LLBCDBIN:Lcom/solab/iso8583/IsoType;

.field public static final enum LLBIN:Lcom/solab/iso8583/IsoType;

.field public static final enum LLLBCDBIN:Lcom/solab/iso8583/IsoType;

.field public static final enum LLLBIN:Lcom/solab/iso8583/IsoType;

.field public static final enum LLLLBCDBIN:Lcom/solab/iso8583/IsoType;

.field public static final enum LLLLBIN:Lcom/solab/iso8583/IsoType;

.field public static final enum LLLLVAR:Lcom/solab/iso8583/IsoType;

.field public static final enum LLLVAR:Lcom/solab/iso8583/IsoType;

.field public static final enum LLVAR:Lcom/solab/iso8583/IsoType;

.field public static final enum NUMERIC:Lcom/solab/iso8583/IsoType;

.field public static final enum TIME:Lcom/solab/iso8583/IsoType;

.field public static final VARIABLE_LENGTH_BIN_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/solab/iso8583/IsoType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private length:I

.field private needsLen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 40
    new-instance v0, Lcom/solab/iso8583/IsoType;

    const-string v1, "NUMERIC"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/solab/iso8583/IsoType;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/solab/iso8583/IsoType;->NUMERIC:Lcom/solab/iso8583/IsoType;

    .line 42
    new-instance v1, Lcom/solab/iso8583/IsoType;

    const-string v4, "ALPHA"

    invoke-direct {v1, v4, v3, v3, v2}, Lcom/solab/iso8583/IsoType;-><init>(Ljava/lang/String;IZI)V

    sput-object v1, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    .line 44
    new-instance v4, Lcom/solab/iso8583/IsoType;

    const-string v5, "LLVAR"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v2, v2}, Lcom/solab/iso8583/IsoType;-><init>(Ljava/lang/String;IZI)V

    sput-object v4, Lcom/solab/iso8583/IsoType;->LLVAR:Lcom/solab/iso8583/IsoType;

    .line 46
    new-instance v5, Lcom/solab/iso8583/IsoType;

    const-string v7, "LLLVAR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v2, v2}, Lcom/solab/iso8583/IsoType;-><init>(Ljava/lang/String;IZI)V

    sput-object v5, Lcom/solab/iso8583/IsoType;->LLLVAR:Lcom/solab/iso8583/IsoType;

    .line 48
    new-instance v7, Lcom/solab/iso8583/IsoType;

    const-string v9, "DATE14"

    const/4 v10, 0x4

    const/16 v11, 0xe

    invoke-direct {v7, v9, v10, v2, v11}, Lcom/solab/iso8583/IsoType;-><init>(Ljava/lang/String;IZI)V

    sput-object v7, Lcom/solab/iso8583/IsoType;->DATE14:Lcom/solab/iso8583/IsoType;

    .line 50
    new-instance v9, Lcom/solab/iso8583/IsoType;

    const-string v12, "DATE10"

    const/4 v13, 0x5

    const/16 v14, 0xa

    invoke-direct {v9, v12, v13, v2, v14}, Lcom/solab/iso8583/IsoType;-><init>(Ljava/lang/String;IZI)V

    sput-object v9, Lcom/solab/iso8583/IsoType;->DATE10:Lcom/solab/iso8583/IsoType;

    .line 52
    new-instance v12, Lcom/solab/iso8583/IsoType;

    const-string v15, "DATE4"

    const/4 v13, 0x6

    invoke-direct {v12, v15, v13, v2, v10}, Lcom/solab/iso8583/IsoType;-><init>(Ljava/lang/String;IZI)V

    sput-object v12, Lcom/solab/iso8583/IsoType;->DATE4:Lcom/solab/iso8583/IsoType;

    .line 54
    new-instance v15, Lcom/solab/iso8583/IsoType;

    const-string v8, "DATE_EXP"

    const/4 v6, 0x7

    invoke-direct {v15, v8, v6, v2, v10}, Lcom/solab/iso8583/IsoType;-><init>(Ljava/lang/String;IZI)V

    sput-object v15, Lcom/solab/iso8583/IsoType;->DATE_EXP:Lcom/solab/iso8583/IsoType;

    .line 56
    new-instance v8, Lcom/solab/iso8583/IsoType;

    const-string v6, "TIME"

    const/16 v10, 0x8

    invoke-direct {v8, v6, v10, v2, v13}, Lcom/solab/iso8583/IsoType;-><init>(Ljava/lang/String;IZI)V

    sput-object v8, Lcom/solab/iso8583/IsoType;->TIME:Lcom/solab/iso8583/IsoType;

    .line 58
    new-instance v6, Lcom/solab/iso8583/IsoType;

    const-string v10, "AMOUNT"

    const/16 v13, 0x9

    const/16 v11, 0xc

    invoke-direct {v6, v10, v13, v2, v11}, Lcom/solab/iso8583/IsoType;-><init>(Ljava/lang/String;IZI)V

    sput-object v6, Lcom/solab/iso8583/IsoType;->AMOUNT:Lcom/solab/iso8583/IsoType;

    .line 60
    new-instance v10, Lcom/solab/iso8583/IsoType;

    const-string v13, "BINARY"

    invoke-direct {v10, v13, v14, v3, v2}, Lcom/solab/iso8583/IsoType;-><init>(Ljava/lang/String;IZI)V

    sput-object v10, Lcom/solab/iso8583/IsoType;->BINARY:Lcom/solab/iso8583/IsoType;

    .line 62
    new-instance v13, Lcom/solab/iso8583/IsoType;

    const-string v14, "LLBIN"

    const/16 v3, 0xb

    invoke-direct {v13, v14, v3, v2, v2}, Lcom/solab/iso8583/IsoType;-><init>(Ljava/lang/String;IZI)V

    sput-object v13, Lcom/solab/iso8583/IsoType;->LLBIN:Lcom/solab/iso8583/IsoType;

    .line 64
    new-instance v14, Lcom/solab/iso8583/IsoType;

    const-string v3, "LLLBIN"

    invoke-direct {v14, v3, v11, v2, v2}, Lcom/solab/iso8583/IsoType;-><init>(Ljava/lang/String;IZI)V

    sput-object v14, Lcom/solab/iso8583/IsoType;->LLLBIN:Lcom/solab/iso8583/IsoType;

    .line 66
    new-instance v3, Lcom/solab/iso8583/IsoType;

    const-string v11, "LLLLVAR"

    move-object/from16 v16, v14

    const/16 v14, 0xd

    invoke-direct {v3, v11, v14, v2, v2}, Lcom/solab/iso8583/IsoType;-><init>(Ljava/lang/String;IZI)V

    sput-object v3, Lcom/solab/iso8583/IsoType;->LLLLVAR:Lcom/solab/iso8583/IsoType;

    .line 68
    new-instance v11, Lcom/solab/iso8583/IsoType;

    const-string v14, "LLLLBIN"

    move-object/from16 v17, v3

    const/16 v3, 0xe

    invoke-direct {v11, v14, v3, v2, v2}, Lcom/solab/iso8583/IsoType;-><init>(Ljava/lang/String;IZI)V

    sput-object v11, Lcom/solab/iso8583/IsoType;->LLLLBIN:Lcom/solab/iso8583/IsoType;

    .line 70
    new-instance v3, Lcom/solab/iso8583/IsoType;

    const-string v14, "LLBCDBIN"

    move-object/from16 v18, v11

    const/16 v11, 0xf

    invoke-direct {v3, v14, v11, v2, v2}, Lcom/solab/iso8583/IsoType;-><init>(Ljava/lang/String;IZI)V

    sput-object v3, Lcom/solab/iso8583/IsoType;->LLBCDBIN:Lcom/solab/iso8583/IsoType;

    .line 72
    new-instance v14, Lcom/solab/iso8583/IsoType;

    const-string v11, "LLLBCDBIN"

    move-object/from16 v19, v3

    const/16 v3, 0x10

    invoke-direct {v14, v11, v3, v2, v2}, Lcom/solab/iso8583/IsoType;-><init>(Ljava/lang/String;IZI)V

    sput-object v14, Lcom/solab/iso8583/IsoType;->LLLBCDBIN:Lcom/solab/iso8583/IsoType;

    .line 74
    new-instance v11, Lcom/solab/iso8583/IsoType;

    const-string v3, "LLLLBCDBIN"

    move-object/from16 v20, v14

    const/16 v14, 0x11

    invoke-direct {v11, v3, v14, v2, v2}, Lcom/solab/iso8583/IsoType;-><init>(Ljava/lang/String;IZI)V

    sput-object v11, Lcom/solab/iso8583/IsoType;->LLLLBCDBIN:Lcom/solab/iso8583/IsoType;

    .line 76
    new-instance v3, Lcom/solab/iso8583/IsoType;

    const-string v14, "DATE12"

    move-object/from16 v21, v11

    const/16 v11, 0x12

    move-object/from16 v22, v13

    const/16 v13, 0xc

    invoke-direct {v3, v14, v11, v2, v13}, Lcom/solab/iso8583/IsoType;-><init>(Ljava/lang/String;IZI)V

    sput-object v3, Lcom/solab/iso8583/IsoType;->DATE12:Lcom/solab/iso8583/IsoType;

    .line 78
    new-instance v13, Lcom/solab/iso8583/IsoType;

    const-string v14, "DATE6"

    const/16 v11, 0x13

    move-object/from16 v23, v3

    const/4 v3, 0x6

    invoke-direct {v13, v14, v11, v2, v3}, Lcom/solab/iso8583/IsoType;-><init>(Ljava/lang/String;IZI)V

    sput-object v13, Lcom/solab/iso8583/IsoType;->DATE6:Lcom/solab/iso8583/IsoType;

    .line 37
    const/16 v14, 0x14

    new-array v14, v14, [Lcom/solab/iso8583/IsoType;

    aput-object v0, v14, v2

    const/4 v0, 0x1

    aput-object v1, v14, v0

    const/4 v0, 0x2

    aput-object v4, v14, v0

    const/4 v0, 0x3

    aput-object v5, v14, v0

    const/4 v0, 0x4

    aput-object v7, v14, v0

    const/4 v0, 0x5

    aput-object v9, v14, v0

    aput-object v12, v14, v3

    const/4 v0, 0x7

    aput-object v15, v14, v0

    const/16 v0, 0x8

    aput-object v8, v14, v0

    const/16 v0, 0x9

    aput-object v6, v14, v0

    const/16 v0, 0xa

    aput-object v10, v14, v0

    const/16 v0, 0xb

    aput-object v22, v14, v0

    const/16 v0, 0xc

    aput-object v16, v14, v0

    const/16 v0, 0xd

    aput-object v17, v14, v0

    const/16 v0, 0xe

    aput-object v18, v14, v0

    const/16 v0, 0xf

    aput-object v19, v14, v0

    const/16 v0, 0x10

    aput-object v20, v14, v0

    const/16 v0, 0x11

    aput-object v21, v14, v0

    const/16 v0, 0x12

    aput-object v23, v14, v0

    aput-object v13, v14, v11

    sput-object v14, Lcom/solab/iso8583/IsoType;->$VALUES:[Lcom/solab/iso8583/IsoType;

    .line 80
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/solab/iso8583/IsoType;

    aput-object v16, v0, v2

    const/4 v1, 0x1

    aput-object v18, v0, v1

    const/4 v1, 0x2

    aput-object v19, v0, v1

    const/4 v1, 0x3

    aput-object v20, v0, v1

    const/4 v1, 0x4

    aput-object v21, v0, v1

    move-object/from16 v1, v22

    invoke-static {v1, v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/solab/iso8583/IsoType;->VARIABLE_LENGTH_BIN_TYPES:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZI)V
    .locals 0
    .param p3, "flag"    # Z
    .param p4, "l"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    iput-boolean p3, p0, Lcom/solab/iso8583/IsoType;->needsLen:Z

    .line 87
    iput p4, p0, Lcom/solab/iso8583/IsoType;->length:I

    .line 88
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/solab/iso8583/IsoType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 37
    const-class v0, Lcom/solab/iso8583/IsoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/solab/iso8583/IsoType;

    return-object v0
.end method

.method public static values()[Lcom/solab/iso8583/IsoType;
    .locals 1

    .line 37
    sget-object v0, Lcom/solab/iso8583/IsoType;->$VALUES:[Lcom/solab/iso8583/IsoType;

    invoke-virtual {v0}, [Lcom/solab/iso8583/IsoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/solab/iso8583/IsoType;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Lcom/solab/iso8583/IsoValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/solab/iso8583/IsoValue<",
            "TT;>;"
        }
    .end annotation

    .line 236
    .local p1, "val":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/solab/iso8583/IsoValue;

    invoke-direct {v0, p0, p1}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;)V

    return-object v0
.end method

.method public apply(Ljava/lang/Object;I)Lcom/solab/iso8583/IsoValue;
    .locals 1
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;I)",
            "Lcom/solab/iso8583/IsoValue<",
            "TT;>;"
        }
    .end annotation

    .line 233
    .local p1, "val":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/solab/iso8583/IsoValue;

    invoke-direct {v0, p0, p1, p2}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public call(Ljava/lang/Object;)Lcom/solab/iso8583/IsoValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/solab/iso8583/IsoValue<",
            "TT;>;"
        }
    .end annotation

    .line 229
    .local p1, "val":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/solab/iso8583/IsoValue;

    invoke-direct {v0, p0, p1}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;)V

    return-object v0
.end method

.method public call(Ljava/lang/Object;I)Lcom/solab/iso8583/IsoValue;
    .locals 1
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;I)",
            "Lcom/solab/iso8583/IsoValue<",
            "TT;>;"
        }
    .end annotation

    .line 225
    .local p1, "val":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/solab/iso8583/IsoValue;

    invoke-direct {v0, p0, p1, p2}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public format(JI)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # J
    .param p3, "length"    # I

    .line 186
    sget-object v0, Lcom/solab/iso8583/IsoType;->NUMERIC:Lcom/solab/iso8583/IsoType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v0, :cond_1

    .line 187
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v3, "%%0%dd"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "x":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, p3, :cond_0

    .line 191
    return-object v0

    .line 189
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Numeric value is larger than intended length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LEN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    .end local v0    # "x":Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    if-eq p0, v0, :cond_5

    sget-object v0, Lcom/solab/iso8583/IsoType;->LLVAR:Lcom/solab/iso8583/IsoType;

    if-eq p0, v0, :cond_5

    sget-object v0, Lcom/solab/iso8583/IsoType;->LLLVAR:Lcom/solab/iso8583/IsoType;

    if-eq p0, v0, :cond_5

    sget-object v0, Lcom/solab/iso8583/IsoType;->LLLLVAR:Lcom/solab/iso8583/IsoType;

    if-ne p0, v0, :cond_2

    goto :goto_0

    .line 194
    :cond_2
    sget-object v0, Lcom/solab/iso8583/IsoType;->AMOUNT:Lcom/solab/iso8583/IsoType;

    if-ne p0, v0, :cond_3

    .line 195
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%010d00"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 196
    :cond_3
    sget-object v0, Lcom/solab/iso8583/IsoType;->BINARY:Lcom/solab/iso8583/IsoType;

    if-eq p0, v0, :cond_4

    sget-object v0, Lcom/solab/iso8583/IsoType;->VARIABLE_LENGTH_BIN_TYPES:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 199
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot format number as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_5
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/solab/iso8583/IsoType;->format(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "length"    # I

    .line 129
    sget-object v0, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, v0, :cond_3

    .line 130
    if-nez p1, :cond_0

    .line 131
    const-string p1, ""

    .line 133
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_1

    .line 134
    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 135
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, p2, :cond_2

    .line 136
    return-object p1

    .line 138
    :cond_2
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v3, "%%-%ds"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 140
    :cond_3
    sget-object v0, Lcom/solab/iso8583/IsoType;->LLVAR:Lcom/solab/iso8583/IsoType;

    if-eq p0, v0, :cond_f

    sget-object v0, Lcom/solab/iso8583/IsoType;->LLLVAR:Lcom/solab/iso8583/IsoType;

    if-eq p0, v0, :cond_f

    sget-object v0, Lcom/solab/iso8583/IsoType;->LLLLVAR:Lcom/solab/iso8583/IsoType;

    if-ne p0, v0, :cond_4

    goto/16 :goto_3

    .line 142
    :cond_4
    sget-object v0, Lcom/solab/iso8583/IsoType;->NUMERIC:Lcom/solab/iso8583/IsoType;

    const/16 v3, 0x30

    if-ne p0, v0, :cond_7

    .line 143
    new-array v0, p2, [C

    .line 144
    .local v0, "c":[C
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 145
    .local v1, "x":[C
    array-length v4, v1

    if-gt v4, p2, :cond_6

    .line 148
    array-length v4, v0

    array-length v5, v1

    sub-int/2addr v4, v5

    .line 149
    .local v4, "lim":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_5

    .line 150
    aput-char v3, v0, v5

    .line 149
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 152
    .end local v5    # "i":I
    :cond_5
    array-length v3, v1

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2

    .line 146
    .end local v4    # "lim":I
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Numeric value is larger than intended length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " LEN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 154
    .end local v0    # "c":[C
    .end local v1    # "x":[C
    :cond_7
    sget-object v4, Lcom/solab/iso8583/IsoType;->AMOUNT:Lcom/solab/iso8583/IsoType;

    const/4 v5, 0x2

    if-ne p0, v4, :cond_8

    .line 155
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v1

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Lcom/solab/iso8583/IsoType;->format(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 156
    :cond_8
    sget-object v0, Lcom/solab/iso8583/IsoType;->BINARY:Lcom/solab/iso8583/IsoType;

    if-ne p0, v0, :cond_d

    .line 158
    if-nez p1, :cond_9

    .line 159
    const-string p1, ""

    .line 161
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_a

    .line 162
    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 164
    :cond_a
    new-array v0, p2, [C

    .line 165
    .restart local v0    # "c":[C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 166
    .local v4, "end":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    rem-int/2addr v6, v5

    if-ne v6, v1, :cond_b

    .line 167
    aput-char v3, v0, v2

    .line 168
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v5, v2, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 171
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v1, v2, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    :goto_1
    move v1, v4

    .local v1, "i":I
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_c

    .line 174
    aput-char v3, v0, v1

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 176
    .end local v1    # "i":I
    :cond_c
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    .line 178
    .end local v0    # "c":[C
    .end local v4    # "end":I
    :cond_d
    sget-object v0, Lcom/solab/iso8583/IsoType;->VARIABLE_LENGTH_BIN_TYPES:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 179
    return-object p1

    .line 181
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot format String as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_f
    :goto_3
    return-object p1
.end method

.method public format(Ljava/math/BigDecimal;I)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # Ljava/math/BigDecimal;
    .param p2, "length"    # I

    .line 204
    sget-object v0, Lcom/solab/iso8583/IsoType;->AMOUNT:Lcom/solab/iso8583/IsoType;

    if-ne p0, v0, :cond_0

    .line 205
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%012d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 206
    :cond_0
    sget-object v0, Lcom/solab/iso8583/IsoType;->NUMERIC:Lcom/solab/iso8583/IsoType;

    if-ne p0, v0, :cond_1

    .line 207
    invoke-virtual {p1}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/solab/iso8583/IsoType;->format(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 208
    :cond_1
    sget-object v0, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    if-eq p0, v0, :cond_4

    sget-object v0, Lcom/solab/iso8583/IsoType;->LLVAR:Lcom/solab/iso8583/IsoType;

    if-eq p0, v0, :cond_4

    sget-object v0, Lcom/solab/iso8583/IsoType;->LLLVAR:Lcom/solab/iso8583/IsoType;

    if-eq p0, v0, :cond_4

    sget-object v0, Lcom/solab/iso8583/IsoType;->LLLLVAR:Lcom/solab/iso8583/IsoType;

    if-ne p0, v0, :cond_2

    goto :goto_0

    .line 210
    :cond_2
    sget-object v0, Lcom/solab/iso8583/IsoType;->BINARY:Lcom/solab/iso8583/IsoType;

    if-eq p0, v0, :cond_3

    sget-object v0, Lcom/solab/iso8583/IsoType;->VARIABLE_LENGTH_BIN_TYPES:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 213
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot format BigDecimal as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_4
    :goto_0
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/solab/iso8583/IsoType;->format(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/util/Date;
    .param p2, "tz"    # Ljava/util/TimeZone;

    .line 104
    sget-object v0, Lcom/solab/iso8583/IsoType;->DATE10:Lcom/solab/iso8583/IsoType;

    if-ne p0, v0, :cond_0

    .line 105
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    goto :goto_0

    .line 106
    .end local v0    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_0
    sget-object v0, Lcom/solab/iso8583/IsoType;->DATE4:Lcom/solab/iso8583/IsoType;

    if-ne p0, v0, :cond_1

    .line 107
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v0    # "sdf":Ljava/text/SimpleDateFormat;
    goto :goto_0

    .line 108
    .end local v0    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_1
    sget-object v0, Lcom/solab/iso8583/IsoType;->DATE_EXP:Lcom/solab/iso8583/IsoType;

    if-ne p0, v0, :cond_2

    .line 109
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyMM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v0    # "sdf":Ljava/text/SimpleDateFormat;
    goto :goto_0

    .line 110
    .end local v0    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_2
    sget-object v0, Lcom/solab/iso8583/IsoType;->TIME:Lcom/solab/iso8583/IsoType;

    if-ne p0, v0, :cond_3

    .line 111
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v0    # "sdf":Ljava/text/SimpleDateFormat;
    goto :goto_0

    .line 112
    .end local v0    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_3
    sget-object v0, Lcom/solab/iso8583/IsoType;->DATE12:Lcom/solab/iso8583/IsoType;

    if-ne p0, v0, :cond_4

    .line 113
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v0    # "sdf":Ljava/text/SimpleDateFormat;
    goto :goto_0

    .line 114
    .end local v0    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_4
    sget-object v0, Lcom/solab/iso8583/IsoType;->DATE14:Lcom/solab/iso8583/IsoType;

    if-ne p0, v0, :cond_5

    .line 115
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "YYYYMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v0    # "sdf":Ljava/text/SimpleDateFormat;
    goto :goto_0

    .line 116
    .end local v0    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_5
    sget-object v0, Lcom/solab/iso8583/IsoType;->DATE6:Lcom/solab/iso8583/IsoType;

    if-ne p0, v0, :cond_7

    .line 117
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 121
    .restart local v0    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_0
    if-eqz p2, :cond_6

    .line 122
    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 124
    :cond_6
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 119
    .end local v0    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot format date as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLength()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/solab/iso8583/IsoType;->length:I

    return v0
.end method

.method public needsLength()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/solab/iso8583/IsoType;->needsLen:Z

    return v0
.end method

.method public value(Ljava/lang/Object;)Lcom/solab/iso8583/IsoValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/solab/iso8583/IsoValue<",
            "TT;>;"
        }
    .end annotation

    .line 221
    .local p1, "val":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/solab/iso8583/IsoValue;

    invoke-direct {v0, p0, p1}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;)V

    return-object v0
.end method

.method public value(Ljava/lang/Object;I)Lcom/solab/iso8583/IsoValue;
    .locals 1
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;I)",
            "Lcom/solab/iso8583/IsoValue<",
            "TT;>;"
        }
    .end annotation

    .line 217
    .local p1, "val":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/solab/iso8583/IsoValue;

    invoke-direct {v0, p0, p1, p2}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    return-object v0
.end method
