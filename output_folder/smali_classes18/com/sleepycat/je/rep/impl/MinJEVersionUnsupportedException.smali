.class public Lcom/sleepycat/je/rep/impl/MinJEVersionUnsupportedException;
.super Ljava/lang/Exception;
.source "MinJEVersionUnsupportedException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final minVersion:Lcom/sleepycat/je/JEVersion;

.field public final nodeName:Ljava/lang/String;

.field public final nodeVersion:Lcom/sleepycat/je/JEVersion;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/JEVersion;Ljava/lang/String;Lcom/sleepycat/je/JEVersion;)V
    .locals 2
    .param p1, "minVersion"    # Lcom/sleepycat/je/JEVersion;
    .param p2, "nodeName"    # Ljava/lang/String;
    .param p3, "nodeVersion"    # Lcom/sleepycat/je/JEVersion;

    .line 43
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 44
    if-eqz p1, :cond_1

    .line 47
    if-eqz p2, :cond_0

    .line 50
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/MinJEVersionUnsupportedException;->minVersion:Lcom/sleepycat/je/JEVersion;

    .line 51
    iput-object p2, p0, Lcom/sleepycat/je/rep/impl/MinJEVersionUnsupportedException;->nodeName:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/sleepycat/je/rep/impl/MinJEVersionUnsupportedException;->nodeVersion:Lcom/sleepycat/je/JEVersion;

    .line 53
    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The nodeName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The minVersion must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Version is not supported: minVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/MinJEVersionUnsupportedException;->minVersion:Lcom/sleepycat/je/JEVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nodeName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/MinJEVersionUnsupportedException;->nodeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nodeVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/MinJEVersionUnsupportedException;->nodeVersion:Lcom/sleepycat/je/JEVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
