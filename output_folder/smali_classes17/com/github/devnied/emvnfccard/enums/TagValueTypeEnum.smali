.class public final enum Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;
.super Ljava/lang/Enum;
.source "TagValueTypeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;

.field public static final enum BINARY:Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;

.field public static final enum DOL:Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;

.field public static final enum MIXED:Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;

.field public static final enum NUMERIC:Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;

.field public static final enum TEMPLATE:Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;

.field public static final enum TEXT:Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 23
    new-instance v0, Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;

    const-string v1, "BINARY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;->BINARY:Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;

    new-instance v1, Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;

    const-string v3, "NUMERIC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;->NUMERIC:Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;

    new-instance v3, Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;

    const-string v5, "TEXT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;->TEXT:Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;

    new-instance v5, Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;

    const-string v7, "MIXED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;->MIXED:Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;

    new-instance v7, Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;

    const-string v9, "DOL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;->DOL:Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;

    new-instance v9, Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;

    const-string v11, "TEMPLATE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;->TEMPLATE:Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;

    .line 22
    const/4 v11, 0x6

    new-array v11, v11, [Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;->$VALUES:[Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const-class v0, Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;

    return-object v0
.end method

.method public static values()[Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;
    .locals 1

    .line 22
    sget-object v0, Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;->$VALUES:[Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;

    invoke-virtual {v0}, [Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;

    return-object v0
.end method
