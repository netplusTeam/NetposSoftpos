.class Lcom/sleepycat/je/dbi/DbEnvState;
.super Ljava/lang/Object;
.source "DbEnvState.java"


# static fields
.field public static final CLOSED:Lcom/sleepycat/je/dbi/DbEnvState;

.field private static final DEBUG:Z = false

.field public static final INIT:Lcom/sleepycat/je/dbi/DbEnvState;

.field public static final INVALID:Lcom/sleepycat/je/dbi/DbEnvState;

.field public static final OPEN:Lcom/sleepycat/je/dbi/DbEnvState;

.field public static final VALID_FOR_CLOSE:[Lcom/sleepycat/je/dbi/DbEnvState;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 27
    new-instance v0, Lcom/sleepycat/je/dbi/DbEnvState;

    const-string v1, "initialized"

    invoke-direct {v0, v1}, Lcom/sleepycat/je/dbi/DbEnvState;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/DbEnvState;->INIT:Lcom/sleepycat/je/dbi/DbEnvState;

    .line 28
    new-instance v1, Lcom/sleepycat/je/dbi/DbEnvState;

    const-string v2, "open"

    invoke-direct {v1, v2}, Lcom/sleepycat/je/dbi/DbEnvState;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/sleepycat/je/dbi/DbEnvState;->OPEN:Lcom/sleepycat/je/dbi/DbEnvState;

    .line 29
    new-instance v2, Lcom/sleepycat/je/dbi/DbEnvState;

    const-string v3, "closed"

    invoke-direct {v2, v3}, Lcom/sleepycat/je/dbi/DbEnvState;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/sleepycat/je/dbi/DbEnvState;->CLOSED:Lcom/sleepycat/je/dbi/DbEnvState;

    .line 30
    new-instance v2, Lcom/sleepycat/je/dbi/DbEnvState;

    const-string v3, "invalid"

    invoke-direct {v2, v3}, Lcom/sleepycat/je/dbi/DbEnvState;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/sleepycat/je/dbi/DbEnvState;->INVALID:Lcom/sleepycat/je/dbi/DbEnvState;

    .line 33
    const/4 v3, 0x3

    new-array v3, v3, [Lcom/sleepycat/je/dbi/DbEnvState;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    sput-object v3, Lcom/sleepycat/je/dbi/DbEnvState;->VALID_FOR_CLOSE:[Lcom/sleepycat/je/dbi/DbEnvState;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/sleepycat/je/dbi/DbEnvState;->name:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method checkState([Lcom/sleepycat/je/dbi/DbEnvState;Lcom/sleepycat/je/dbi/DbEnvState;)V
    .locals 4
    .param p1, "validPrevStates"    # [Lcom/sleepycat/je/dbi/DbEnvState;
    .param p2, "newState"    # Lcom/sleepycat/je/dbi/DbEnvState;

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "transitionOk":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 56
    aget-object v2, p1, v1

    if-ne p0, v2, :cond_0

    .line 57
    const/4 v0, 0x1

    .line 58
    goto :goto_1

    .line 55
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    .end local v1    # "i":I
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 66
    return-void

    .line 62
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t go from environment state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 63
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DbEnvState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 64
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/DbEnvState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbEnvState;->name:Ljava/lang/String;

    return-object v0
.end method
