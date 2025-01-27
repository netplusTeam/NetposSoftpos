.class public abstract Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;
.super Ljava/lang/Object;
.source "FileProtector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/cleaner/FileProtector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ProtectedFileSet"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final protectVlsnIndex:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "protectVlsnIndex"    # Z

    .line 886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 887
    iput-object p1, p0, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;->name:Ljava/lang/String;

    .line 888
    iput-boolean p2, p0, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;->protectVlsnIndex:Z

    .line 889
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLcom/sleepycat/je/cleaner/FileProtector$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lcom/sleepycat/je/cleaner/FileProtector$1;

    .line 880
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;

    .line 880
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;

    .line 880
    iget-boolean v0, p0, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;->protectVlsnIndex:Z

    return v0
.end method

.method private getName()Ljava/lang/String;
    .locals 1

    .line 896
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;->name:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method abstract isProtected(Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;)Z
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProtectedFileSet:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
