.class public final enum Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;
.super Ljava/lang/Enum;
.source "ApplicationStepEnum.java"

# interfaces
.implements Lcom/github/devnied/emvnfccard/model/enums/IKeyEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;",
        ">;",
        "Lcom/github/devnied/emvnfccard/model/enums/IKeyEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;

.field public static final enum NOT_SELECTED:Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;

.field public static final enum READ:Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;

.field public static final enum SELECTED:Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;


# instance fields
.field private key:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 30
    new-instance v0, Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;

    const-string v1, "NOT_SELECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;->NOT_SELECTED:Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;

    .line 34
    new-instance v1, Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;

    const-string v3, "SELECTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;->SELECTED:Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;

    .line 38
    new-instance v3, Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;

    const-string v5, "READ"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;->READ:Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;

    .line 25
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;->$VALUES:[Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "pKey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput p3, p0, Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;->key:I

    .line 52
    return-void
.end method

.method public static isAtLeast(Ljava/util/List;Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;)Z
    .locals 5
    .param p1, "pStep"    # Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/devnied/emvnfccard/model/Application;",
            ">;",
            "Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;",
            ")Z"
        }
    .end annotation

    .line 66
    .local p0, "pApplications":Ljava/util/List;, "Ljava/util/List<Lcom/github/devnied/emvnfccard/model/Application;>;"
    const/4 v0, 0x0

    .line 67
    .local v0, "ret":Z
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 68
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/devnied/emvnfccard/model/Application;

    .line 69
    .local v2, "app":Lcom/github/devnied/emvnfccard/model/Application;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/github/devnied/emvnfccard/model/Application;->getReadingStep()Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/github/devnied/emvnfccard/model/Application;->getReadingStep()Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;

    move-result-object v3

    iget v3, v3, Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;->key:I

    invoke-virtual {p1}, Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;->getKey()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 70
    const/4 v0, 0x1

    .line 72
    .end local v2    # "app":Lcom/github/devnied/emvnfccard/model/Application;
    :cond_0
    goto :goto_0

    .line 74
    :cond_1
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;

    return-object v0
.end method

.method public static values()[Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;
    .locals 1

    .line 25
    sget-object v0, Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;->$VALUES:[Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;

    invoke-virtual {v0}, [Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;

    return-object v0
.end method


# virtual methods
.method public getKey()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;->key:I

    return v0
.end method
