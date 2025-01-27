.class public final enum Lcom/github/devnied/emvnfccard/enums/CommandEnum;
.super Ljava/lang/Enum;
.source "CommandEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/devnied/emvnfccard/enums/CommandEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/devnied/emvnfccard/enums/CommandEnum;

.field public static final enum GET_DATA:Lcom/github/devnied/emvnfccard/enums/CommandEnum;

.field public static final enum GET_RESPONSE:Lcom/github/devnied/emvnfccard/enums/CommandEnum;

.field public static final enum GPO:Lcom/github/devnied/emvnfccard/enums/CommandEnum;

.field public static final enum READ_RECORD:Lcom/github/devnied/emvnfccard/enums/CommandEnum;

.field public static final enum SELECT:Lcom/github/devnied/emvnfccard/enums/CommandEnum;


# instance fields
.field private final cla:I

.field private final ins:I

.field private final p1:I

.field private final p2:I


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 29
    new-instance v7, Lcom/github/devnied/emvnfccard/enums/CommandEnum;

    const-string v1, "SELECT"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xa4

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/github/devnied/emvnfccard/enums/CommandEnum;-><init>(Ljava/lang/String;IIIII)V

    sput-object v7, Lcom/github/devnied/emvnfccard/enums/CommandEnum;->SELECT:Lcom/github/devnied/emvnfccard/enums/CommandEnum;

    .line 34
    new-instance v0, Lcom/github/devnied/emvnfccard/enums/CommandEnum;

    const-string v9, "READ_RECORD"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v12, 0xb2

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/github/devnied/emvnfccard/enums/CommandEnum;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/github/devnied/emvnfccard/enums/CommandEnum;->READ_RECORD:Lcom/github/devnied/emvnfccard/enums/CommandEnum;

    .line 39
    new-instance v1, Lcom/github/devnied/emvnfccard/enums/CommandEnum;

    const-string v16, "GPO"

    const/16 v17, 0x2

    const/16 v18, 0x80

    const/16 v19, 0xa8

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Lcom/github/devnied/emvnfccard/enums/CommandEnum;-><init>(Ljava/lang/String;IIIII)V

    sput-object v1, Lcom/github/devnied/emvnfccard/enums/CommandEnum;->GPO:Lcom/github/devnied/emvnfccard/enums/CommandEnum;

    .line 44
    new-instance v2, Lcom/github/devnied/emvnfccard/enums/CommandEnum;

    const-string v9, "GET_DATA"

    const/4 v10, 0x3

    const/16 v11, 0x80

    const/16 v12, 0xca

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/github/devnied/emvnfccard/enums/CommandEnum;-><init>(Ljava/lang/String;IIIII)V

    sput-object v2, Lcom/github/devnied/emvnfccard/enums/CommandEnum;->GET_DATA:Lcom/github/devnied/emvnfccard/enums/CommandEnum;

    .line 49
    new-instance v3, Lcom/github/devnied/emvnfccard/enums/CommandEnum;

    const-string v16, "GET_RESPONSE"

    const/16 v17, 0x4

    const/16 v18, 0x0

    const/16 v19, 0xc

    move-object v15, v3

    invoke-direct/range {v15 .. v21}, Lcom/github/devnied/emvnfccard/enums/CommandEnum;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/github/devnied/emvnfccard/enums/CommandEnum;->GET_RESPONSE:Lcom/github/devnied/emvnfccard/enums/CommandEnum;

    .line 24
    const/4 v4, 0x5

    new-array v4, v4, [Lcom/github/devnied/emvnfccard/enums/CommandEnum;

    const/4 v5, 0x0

    aput-object v7, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    const/4 v0, 0x4

    aput-object v3, v4, v0

    sput-object v4, Lcom/github/devnied/emvnfccard/enums/CommandEnum;->$VALUES:[Lcom/github/devnied/emvnfccard/enums/CommandEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0
    .param p3, "cla"    # I
    .param p4, "ins"    # I
    .param p5, "p1"    # I
    .param p6, "p2"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 84
    iput p3, p0, Lcom/github/devnied/emvnfccard/enums/CommandEnum;->cla:I

    .line 85
    iput p4, p0, Lcom/github/devnied/emvnfccard/enums/CommandEnum;->ins:I

    .line 86
    iput p5, p0, Lcom/github/devnied/emvnfccard/enums/CommandEnum;->p1:I

    .line 87
    iput p6, p0, Lcom/github/devnied/emvnfccard/enums/CommandEnum;->p2:I

    .line 88
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/devnied/emvnfccard/enums/CommandEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 24
    const-class v0, Lcom/github/devnied/emvnfccard/enums/CommandEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/devnied/emvnfccard/enums/CommandEnum;

    return-object v0
.end method

.method public static values()[Lcom/github/devnied/emvnfccard/enums/CommandEnum;
    .locals 1

    .line 24
    sget-object v0, Lcom/github/devnied/emvnfccard/enums/CommandEnum;->$VALUES:[Lcom/github/devnied/emvnfccard/enums/CommandEnum;

    invoke-virtual {v0}, [Lcom/github/devnied/emvnfccard/enums/CommandEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/devnied/emvnfccard/enums/CommandEnum;

    return-object v0
.end method


# virtual methods
.method public getCla()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/github/devnied/emvnfccard/enums/CommandEnum;->cla:I

    return v0
.end method

.method public getIns()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/github/devnied/emvnfccard/enums/CommandEnum;->ins:I

    return v0
.end method

.method public getP1()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/github/devnied/emvnfccard/enums/CommandEnum;->p1:I

    return v0
.end method

.method public getP2()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/github/devnied/emvnfccard/enums/CommandEnum;->p2:I

    return v0
.end method
