.class public final enum Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;
.super Ljava/lang/Enum;
.source "CardStateEnum.java"

# interfaces
.implements Lcom/github/devnied/emvnfccard/model/enums/IKeyEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;",
        ">;",
        "Lcom/github/devnied/emvnfccard/model/enums/IKeyEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;

.field public static final enum ACTIVE:Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;

.field public static final enum LOCKED:Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;

.field public static final enum UNKNOWN:Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 23
    new-instance v0, Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;->UNKNOWN:Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;

    new-instance v1, Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;

    const-string v3, "LOCKED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;->LOCKED:Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;

    new-instance v3, Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;

    const-string v5, "ACTIVE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;->ACTIVE:Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;

    .line 21
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;->$VALUES:[Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 21
    const-class v0, Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;

    return-object v0
.end method

.method public static values()[Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;
    .locals 1

    .line 21
    sget-object v0, Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;->$VALUES:[Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;

    invoke-virtual {v0}, [Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;

    return-object v0
.end method


# virtual methods
.method public getKey()I
    .locals 1

    .line 27
    const/4 v0, 0x0

    return v0
.end method
