.class public final enum Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;
.super Ljava/lang/Enum;
.source "ServiceCode1Enum.java"

# interfaces
.implements Lcom/github/devnied/emvnfccard/model/enums/IKeyEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;",
        ">;",
        "Lcom/github/devnied/emvnfccard/model/enums/IKeyEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;

.field public static final enum INTERNATIONNAL:Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;

.field public static final enum INTERNATIONNAL_ICC:Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;

.field public static final enum NATIONAL:Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;

.field public static final enum NATIONAL_ICC:Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;

.field public static final enum PRIVATE:Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;


# instance fields
.field private final interchange:Ljava/lang/String;

.field private final technology:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 23
    new-instance v6, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;

    const-string v1, "INTERNATIONNAL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "International interchange"

    const-string v5, "None"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;->INTERNATIONNAL:Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;

    .line 24
    new-instance v0, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;

    const-string v8, "INTERNATIONNAL_ICC"

    const/4 v9, 0x1

    const/4 v10, 0x2

    const-string v11, "International interchange"

    const-string v12, "Integrated circuit card"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;->INTERNATIONNAL_ICC:Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;

    .line 25
    new-instance v1, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;

    const-string v14, "NATIONAL"

    const/4 v15, 0x2

    const/16 v16, 0x5

    const-string v17, "National interchange"

    const-string v18, "None"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;->NATIONAL:Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;

    .line 26
    new-instance v2, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;

    const-string v8, "NATIONAL_ICC"

    const/4 v9, 0x3

    const/4 v10, 0x6

    const-string v11, "National interchange"

    const-string v12, "Integrated circuit card"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;->NATIONAL_ICC:Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;

    .line 27
    new-instance v3, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;

    const-string v14, "PRIVATE"

    const/4 v15, 0x4

    const/16 v16, 0x7

    const-string v17, "Private"

    const-string v18, "None"

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;->PRIVATE:Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;

    .line 21
    const/4 v4, 0x5

    new-array v4, v4, [Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    const/4 v0, 0x4

    aput-object v3, v4, v0

    sput-object v4, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;->$VALUES:[Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "value"    # I
    .param p4, "interchange"    # Ljava/lang/String;
    .param p5, "technology"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;->value:I

    .line 42
    iput-object p4, p0, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;->interchange:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;->technology:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 21
    const-class v0, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;

    return-object v0
.end method

.method public static values()[Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;
    .locals 1

    .line 21
    sget-object v0, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;->$VALUES:[Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;

    invoke-virtual {v0}, [Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;

    return-object v0
.end method


# virtual methods
.method public getInterchange()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;->interchange:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;->value:I

    return v0
.end method

.method public getTechnology()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode1Enum;->technology:Ljava/lang/String;

    return-object v0
.end method
