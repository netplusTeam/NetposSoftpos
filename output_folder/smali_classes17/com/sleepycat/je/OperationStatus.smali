.class public final enum Lcom/sleepycat/je/OperationStatus;
.super Ljava/lang/Enum;
.source "OperationStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/OperationStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/OperationStatus;

.field public static final enum KEYEMPTY:Lcom/sleepycat/je/OperationStatus;

.field public static final enum KEYEXIST:Lcom/sleepycat/je/OperationStatus;

.field public static final enum NOTFOUND:Lcom/sleepycat/je/OperationStatus;

.field public static final enum SUCCESS:Lcom/sleepycat/je/OperationStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 24
    new-instance v0, Lcom/sleepycat/je/OperationStatus;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/OperationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    .line 30
    new-instance v1, Lcom/sleepycat/je/OperationStatus;

    const-string v3, "KEYEXIST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/OperationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/OperationStatus;->KEYEXIST:Lcom/sleepycat/je/OperationStatus;

    .line 38
    new-instance v3, Lcom/sleepycat/je/OperationStatus;

    const-string v5, "KEYEMPTY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/je/OperationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/je/OperationStatus;->KEYEMPTY:Lcom/sleepycat/je/OperationStatus;

    .line 43
    new-instance v5, Lcom/sleepycat/je/OperationStatus;

    const-string v7, "NOTFOUND"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sleepycat/je/OperationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    .line 19
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/sleepycat/je/OperationStatus;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/sleepycat/je/OperationStatus;->$VALUES:[Lcom/sleepycat/je/OperationStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/OperationStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 19
    const-class v0, Lcom/sleepycat/je/OperationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/OperationStatus;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/OperationStatus;
    .locals 1

    .line 19
    sget-object v0, Lcom/sleepycat/je/OperationStatus;->$VALUES:[Lcom/sleepycat/je/OperationStatus;

    invoke-virtual {v0}, [Lcom/sleepycat/je/OperationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/OperationStatus;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OperationStatus."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/je/OperationStatus;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
