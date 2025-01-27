.class public Ljavassist/tools/Dump;
.super Ljava/lang/Object;
.source "Dump.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    array-length v0, p0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 47
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Usage: java Dump <class file name>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 48
    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    const/4 v3, 0x0

    aget-object v3, p0, v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 53
    .local v0, "in":Ljava/io/DataInputStream;
    new-instance v2, Ljavassist/bytecode/ClassFile;

    invoke-direct {v2, v0}, Ljavassist/bytecode/ClassFile;-><init>(Ljava/io/DataInputStream;)V

    .line 54
    .local v2, "w":Ljavassist/bytecode/ClassFile;
    new-instance v3, Ljava/io/PrintWriter;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v3, v4, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    move-object v1, v3

    .line 55
    .local v1, "out":Ljava/io/PrintWriter;
    const-string v3, "*** constant pool ***"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v2}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljavassist/bytecode/ConstPool;->print(Ljava/io/PrintWriter;)V

    .line 57
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 58
    const-string v3, "*** members ***"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    invoke-static {v2, v1}, Ljavassist/bytecode/ClassFilePrinter;->print(Ljavassist/bytecode/ClassFile;Ljava/io/PrintWriter;)V

    .line 60
    return-void
.end method
