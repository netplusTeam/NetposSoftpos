.class final enum Lcom/sleepycat/je/log/LogEntryType$Txnal;
.super Ljava/lang/Enum;
.source "LogEntryType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/log/LogEntryType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Txnal"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/log/LogEntryType$Txnal;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/log/LogEntryType$Txnal;

.field public static final enum NON_TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

.field public static final enum TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;


# instance fields
.field private final isTxnal:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 893
    new-instance v0, Lcom/sleepycat/je/log/LogEntryType$Txnal;

    const-string v1, "TXNAL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/log/LogEntryType$Txnal;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType$Txnal;->TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    .line 894
    new-instance v1, Lcom/sleepycat/je/log/LogEntryType$Txnal;

    const-string v4, "NON_TXNAL"

    invoke-direct {v1, v4, v3, v2}, Lcom/sleepycat/je/log/LogEntryType$Txnal;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/sleepycat/je/log/LogEntryType$Txnal;->NON_TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    .line 892
    const/4 v4, 0x2

    new-array v4, v4, [Lcom/sleepycat/je/log/LogEntryType$Txnal;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    sput-object v4, Lcom/sleepycat/je/log/LogEntryType$Txnal;->$VALUES:[Lcom/sleepycat/je/log/LogEntryType$Txnal;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p3, "isTxnal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 898
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 899
    iput-boolean p3, p0, Lcom/sleepycat/je/log/LogEntryType$Txnal;->isTxnal:Z

    .line 900
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/log/LogEntryType$Txnal;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 892
    const-class v0, Lcom/sleepycat/je/log/LogEntryType$Txnal;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/log/LogEntryType$Txnal;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/log/LogEntryType$Txnal;
    .locals 1

    .line 892
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType$Txnal;->$VALUES:[Lcom/sleepycat/je/log/LogEntryType$Txnal;

    invoke-virtual {v0}, [Lcom/sleepycat/je/log/LogEntryType$Txnal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/log/LogEntryType$Txnal;

    return-object v0
.end method


# virtual methods
.method isTransactional()Z
    .locals 1

    .line 903
    iget-boolean v0, p0, Lcom/sleepycat/je/log/LogEntryType$Txnal;->isTxnal:Z

    return v0
.end method
