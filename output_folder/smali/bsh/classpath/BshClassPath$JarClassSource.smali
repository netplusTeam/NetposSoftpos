.class public Lbsh/classpath/BshClassPath$JarClassSource;
.super Lbsh/classpath/BshClassPath$ClassSource;
.source "BshClassPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsh/classpath/BshClassPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JarClassSource"
.end annotation


# direct methods
.method constructor <init>(Ljava/net/URL;)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;

    .line 691
    invoke-direct {p0}, Lbsh/classpath/BshClassPath$ClassSource;-><init>()V

    iput-object p1, p0, Lbsh/classpath/BshClassPath$JarClassSource;->source:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getCode(Ljava/lang/String;)[B
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .line 699
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unimplemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .line 692
    iget-object v0, p0, Lbsh/classpath/BshClassPath$JarClassSource;->source:Ljava/lang/Object;

    check-cast v0, Ljava/net/URL;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Jar: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsh/classpath/BshClassPath$JarClassSource;->source:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
