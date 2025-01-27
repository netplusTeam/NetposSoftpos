.class public final enum Lcom/github/devnied/emvnfccard/model/enums/ServiceCode2Enum;
.super Ljava/lang/Enum;
.source "ServiceCode2Enum.java"

# interfaces
.implements Lcom/github/devnied/emvnfccard/model/enums/IKeyEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/devnied/emvnfccard/model/enums/ServiceCode2Enum;",
        ">;",
        "Lcom/github/devnied/emvnfccard/model/enums/IKeyEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/devnied/emvnfccard/model/enums/ServiceCode2Enum;

.field public static final enum BY_ISSUER:Lcom/github/devnied/emvnfccard/model/enums/ServiceCode2Enum;

.field public static final enum BY_ISSUER_WIHOUT_BI_AGREEMENT:Lcom/github/devnied/emvnfccard/model/enums/ServiceCode2Enum;

.field public static final enum NORMAL:Lcom/github/devnied/emvnfccard/model/enums/ServiceCode2Enum;


# instance fields
.field private final authorizationProcessing:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 23
    new-instance v0, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode2Enum;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    const-string v3, "Normal"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode2Enum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode2Enum;->NORMAL:Lcom/github/devnied/emvnfccard/model/enums/ServiceCode2Enum;

    .line 24
    new-instance v1, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode2Enum;

    const-string v3, "BY_ISSUER"

    const/4 v4, 0x1

    const/4 v5, 0x2

    const-string v6, "By issuer"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode2Enum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode2Enum;->BY_ISSUER:Lcom/github/devnied/emvnfccard/model/enums/ServiceCode2Enum;

    .line 25
    new-instance v3, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode2Enum;

    const-string v6, "BY_ISSUER_WIHOUT_BI_AGREEMENT"

    const/4 v7, 0x4

    const-string v8, "By issuer unless explicit bilateral agreement applies"

    invoke-direct {v3, v6, v5, v7, v8}, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode2Enum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode2Enum;->BY_ISSUER_WIHOUT_BI_AGREEMENT:Lcom/github/devnied/emvnfccard/model/enums/ServiceCode2Enum;

    .line 21
    const/4 v6, 0x3

    new-array v6, v6, [Lcom/github/devnied/emvnfccard/model/enums/ServiceCode2Enum;

    aput-object v0, v6, v2

    aput-object v1, v6, v4

    aput-object v3, v6, v5

    sput-object v6, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode2Enum;->$VALUES:[Lcom/github/devnied/emvnfccard/model/enums/ServiceCode2Enum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # I
    .param p4, "authorizationProcessing"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode2Enum;->value:I

    .line 32
    iput-object p4, p0, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode2Enum;->authorizationProcessing:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/devnied/emvnfccard/model/enums/ServiceCode2Enum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 21
    const-class v0, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode2Enum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode2Enum;

    return-object v0
.end method

.method public static values()[Lcom/github/devnied/emvnfccard/model/enums/ServiceCode2Enum;
    .locals 1

    .line 21
    sget-object v0, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode2Enum;->$VALUES:[Lcom/github/devnied/emvnfccard/model/enums/ServiceCode2Enum;

    invoke-virtual {v0}, [Lcom/github/devnied/emvnfccard/model/enums/ServiceCode2Enum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/devnied/emvnfccard/model/enums/ServiceCode2Enum;

    return-object v0
.end method


# virtual methods
.method public getAuthorizationProcessing()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode2Enum;->authorizationProcessing:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode2Enum;->value:I

    return v0
.end method
