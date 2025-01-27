.class public final enum Lorg/yaml/snakeyaml/tokens/Token$ID;
.super Ljava/lang/Enum;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/tokens/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/yaml/snakeyaml/tokens/Token$ID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum Alias:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum Anchor:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum BlockEnd:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum BlockEntry:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum BlockMappingStart:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum BlockSequenceStart:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum Comment:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum Directive:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum DocumentEnd:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum DocumentStart:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum Error:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum FlowEntry:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum FlowMappingEnd:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum FlowMappingStart:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum FlowSequenceEnd:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum FlowSequenceStart:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum Key:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum Scalar:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum StreamEnd:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum StreamStart:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum Tag:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum Value:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum Whitespace:Lorg/yaml/snakeyaml/tokens/Token$ID;


# instance fields
.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 23
    new-instance v0, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v1, "Alias"

    const/4 v2, 0x0

    const-string v3, "<alias>"

    invoke-direct {v0, v1, v2, v3}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/tokens/Token$ID;->Alias:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 24
    new-instance v1, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v3, "Anchor"

    const/4 v4, 0x1

    const-string v5, "<anchor>"

    invoke-direct {v1, v3, v4, v5}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/yaml/snakeyaml/tokens/Token$ID;->Anchor:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 25
    new-instance v3, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v5, "BlockEnd"

    const/4 v6, 0x2

    const-string v7, "<block end>"

    invoke-direct {v3, v5, v6, v7}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/yaml/snakeyaml/tokens/Token$ID;->BlockEnd:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 26
    new-instance v5, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v7, "BlockEntry"

    const/4 v8, 0x3

    const-string v9, "-"

    invoke-direct {v5, v7, v8, v9}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/yaml/snakeyaml/tokens/Token$ID;->BlockEntry:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 27
    new-instance v7, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v9, "BlockMappingStart"

    const/4 v10, 0x4

    const-string v11, "<block mapping start>"

    invoke-direct {v7, v9, v10, v11}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/yaml/snakeyaml/tokens/Token$ID;->BlockMappingStart:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 28
    new-instance v9, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v11, "BlockSequenceStart"

    const/4 v12, 0x5

    const-string v13, "<block sequence start>"

    invoke-direct {v9, v11, v12, v13}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lorg/yaml/snakeyaml/tokens/Token$ID;->BlockSequenceStart:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 29
    new-instance v11, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v13, "Directive"

    const/4 v14, 0x6

    const-string v15, "<directive>"

    invoke-direct {v11, v13, v14, v15}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lorg/yaml/snakeyaml/tokens/Token$ID;->Directive:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 30
    new-instance v13, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v15, "DocumentEnd"

    const/4 v14, 0x7

    const-string v12, "<document end>"

    invoke-direct {v13, v15, v14, v12}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lorg/yaml/snakeyaml/tokens/Token$ID;->DocumentEnd:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 31
    new-instance v12, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v15, "DocumentStart"

    const/16 v14, 0x8

    const-string v10, "<document start>"

    invoke-direct {v12, v15, v14, v10}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lorg/yaml/snakeyaml/tokens/Token$ID;->DocumentStart:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 32
    new-instance v10, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v15, "FlowEntry"

    const/16 v14, 0x9

    const-string v8, ","

    invoke-direct {v10, v15, v14, v8}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lorg/yaml/snakeyaml/tokens/Token$ID;->FlowEntry:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 33
    new-instance v8, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v15, "FlowMappingEnd"

    const/16 v14, 0xa

    const-string v6, "}"

    invoke-direct {v8, v15, v14, v6}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/yaml/snakeyaml/tokens/Token$ID;->FlowMappingEnd:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 34
    new-instance v6, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v15, "FlowMappingStart"

    const/16 v14, 0xb

    const-string v4, "{"

    invoke-direct {v6, v15, v14, v4}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/yaml/snakeyaml/tokens/Token$ID;->FlowMappingStart:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 35
    new-instance v4, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v15, "FlowSequenceEnd"

    const/16 v14, 0xc

    const-string v2, "]"

    invoke-direct {v4, v15, v14, v2}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/yaml/snakeyaml/tokens/Token$ID;->FlowSequenceEnd:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 36
    new-instance v2, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v15, "FlowSequenceStart"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const-string v4, "["

    invoke-direct {v2, v15, v14, v4}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/yaml/snakeyaml/tokens/Token$ID;->FlowSequenceStart:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 37
    new-instance v4, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v15, "Key"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const-string v2, "?"

    invoke-direct {v4, v15, v14, v2}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/yaml/snakeyaml/tokens/Token$ID;->Key:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 38
    new-instance v2, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v15, "Scalar"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const-string v4, "<scalar>"

    invoke-direct {v2, v15, v14, v4}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/yaml/snakeyaml/tokens/Token$ID;->Scalar:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 39
    new-instance v4, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v15, "StreamEnd"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const-string v2, "<stream end>"

    invoke-direct {v4, v15, v14, v2}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/yaml/snakeyaml/tokens/Token$ID;->StreamEnd:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 40
    new-instance v2, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v15, "StreamStart"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const-string v4, "<stream start>"

    invoke-direct {v2, v15, v14, v4}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/yaml/snakeyaml/tokens/Token$ID;->StreamStart:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 41
    new-instance v4, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v15, "Tag"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const-string v2, "<tag>"

    invoke-direct {v4, v15, v14, v2}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/yaml/snakeyaml/tokens/Token$ID;->Tag:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 42
    new-instance v2, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v15, "Value"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const-string v4, ":"

    invoke-direct {v2, v15, v14, v4}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/yaml/snakeyaml/tokens/Token$ID;->Value:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 43
    new-instance v4, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v15, "Whitespace"

    const/16 v14, 0x14

    move-object/from16 v23, v2

    const-string v2, "<whitespace>"

    invoke-direct {v4, v15, v14, v2}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/yaml/snakeyaml/tokens/Token$ID;->Whitespace:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 44
    new-instance v2, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v15, "Comment"

    const/16 v14, 0x15

    move-object/from16 v24, v4

    const-string v4, "#"

    invoke-direct {v2, v15, v14, v4}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/yaml/snakeyaml/tokens/Token$ID;->Comment:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 45
    new-instance v4, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v15, "Error"

    const/16 v14, 0x16

    move-object/from16 v25, v2

    const-string v2, "<error>"

    invoke-direct {v4, v15, v14, v2}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/yaml/snakeyaml/tokens/Token$ID;->Error:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 22
    const/16 v2, 0x17

    new-array v2, v2, [Lorg/yaml/snakeyaml/tokens/Token$ID;

    const/4 v14, 0x0

    aput-object v0, v2, v14

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    const/16 v0, 0x14

    aput-object v24, v2, v0

    const/16 v0, 0x15

    aput-object v25, v2, v0

    const/16 v0, 0x16

    aput-object v4, v2, v0

    sput-object v2, Lorg/yaml/snakeyaml/tokens/Token$ID;->$VALUES:[Lorg/yaml/snakeyaml/tokens/Token$ID;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput-object p3, p0, Lorg/yaml/snakeyaml/tokens/Token$ID;->description:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/yaml/snakeyaml/tokens/Token$ID;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const-class v0, Lorg/yaml/snakeyaml/tokens/Token$ID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/tokens/Token$ID;

    return-object v0
.end method

.method public static values()[Lorg/yaml/snakeyaml/tokens/Token$ID;
    .locals 1

    .line 22
    sget-object v0, Lorg/yaml/snakeyaml/tokens/Token$ID;->$VALUES:[Lorg/yaml/snakeyaml/tokens/Token$ID;

    invoke-virtual {v0}, [Lorg/yaml/snakeyaml/tokens/Token$ID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/yaml/snakeyaml/tokens/Token$ID;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/yaml/snakeyaml/tokens/Token$ID;->description:Ljava/lang/String;

    return-object v0
.end method
