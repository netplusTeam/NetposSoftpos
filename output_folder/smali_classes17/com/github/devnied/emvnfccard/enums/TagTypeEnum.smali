.class public final enum Lcom/github/devnied/emvnfccard/enums/TagTypeEnum;
.super Ljava/lang/Enum;
.source "TagTypeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/devnied/emvnfccard/enums/TagTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/devnied/emvnfccard/enums/TagTypeEnum;

.field public static final enum CONSTRUCTED:Lcom/github/devnied/emvnfccard/enums/TagTypeEnum;

.field public static final enum PRIMITIVE:Lcom/github/devnied/emvnfccard/enums/TagTypeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 29
    new-instance v0, Lcom/github/devnied/emvnfccard/enums/TagTypeEnum;

    const-string v1, "PRIMITIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/devnied/emvnfccard/enums/TagTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/devnied/emvnfccard/enums/TagTypeEnum;->PRIMITIVE:Lcom/github/devnied/emvnfccard/enums/TagTypeEnum;

    .line 34
    new-instance v1, Lcom/github/devnied/emvnfccard/enums/TagTypeEnum;

    const-string v3, "CONSTRUCTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/github/devnied/emvnfccard/enums/TagTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/github/devnied/emvnfccard/enums/TagTypeEnum;->CONSTRUCTED:Lcom/github/devnied/emvnfccard/enums/TagTypeEnum;

    .line 24
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/github/devnied/emvnfccard/enums/TagTypeEnum;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/github/devnied/emvnfccard/enums/TagTypeEnum;->$VALUES:[Lcom/github/devnied/emvnfccard/enums/TagTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/devnied/emvnfccard/enums/TagTypeEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 24
    const-class v0, Lcom/github/devnied/emvnfccard/enums/TagTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/devnied/emvnfccard/enums/TagTypeEnum;

    return-object v0
.end method

.method public static values()[Lcom/github/devnied/emvnfccard/enums/TagTypeEnum;
    .locals 1

    .line 24
    sget-object v0, Lcom/github/devnied/emvnfccard/enums/TagTypeEnum;->$VALUES:[Lcom/github/devnied/emvnfccard/enums/TagTypeEnum;

    invoke-virtual {v0}, [Lcom/github/devnied/emvnfccard/enums/TagTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/devnied/emvnfccard/enums/TagTypeEnum;

    return-object v0
.end method
