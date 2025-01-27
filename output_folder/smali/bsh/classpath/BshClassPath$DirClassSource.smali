.class public Lbsh/classpath/BshClassPath$DirClassSource;
.super Lbsh/classpath/BshClassPath$ClassSource;
.source "BshClassPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsh/classpath/BshClassPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DirClassSource"
.end annotation


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "dir"    # Ljava/io/File;

    .line 706
    invoke-direct {p0}, Lbsh/classpath/BshClassPath$ClassSource;-><init>()V

    iput-object p1, p0, Lbsh/classpath/BshClassPath$DirClassSource;->source:Ljava/lang/Object;

    return-void
.end method

.method public static readBytesFromFile(Ljava/io/File;Ljava/lang/String;)[B
    .locals 6
    .param p0, "base"    # Ljava/io/File;
    .param p1, "className"    # Ljava/lang/String;

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v1, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x2e

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 717
    .local v0, "n":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 719
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 720
    const/4 v2, 0x0

    return-object v2

    .line 724
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 725
    .local v2, "fis":Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 727
    .local v3, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    new-array v4, v4, [B

    .line 729
    .local v4, "bytes":[B
    invoke-virtual {v3, v4}, Ljava/io/DataInputStream;->readFully([B)V

    .line 730
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "dis":Ljava/io/DataInputStream;
    nop

    .line 735
    return-object v4

    .line 731
    .end local v4    # "bytes":[B
    :catch_0
    move-exception v2

    .line 732
    .local v2, "ie":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t load file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getCode(Ljava/lang/String;)[B
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .line 711
    invoke-virtual {p0}, Lbsh/classpath/BshClassPath$DirClassSource;->getDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lbsh/classpath/BshClassPath$DirClassSource;->readBytesFromFile(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getDir()Ljava/io/File;
    .locals 1

    .line 707
    iget-object v0, p0, Lbsh/classpath/BshClassPath$DirClassSource;->source:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dir: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsh/classpath/BshClassPath$DirClassSource;->source:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
