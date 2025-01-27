.class public Lcom/sleepycat/persist/model/ClassEnhancer;
.super Ljava/lang/Object;
.source "ClassEnhancer.java"

# interfaces
.implements Ljava/lang/instrument/ClassFileTransformer;


# static fields
.field private static final AGENT_PREFIX:Ljava/lang/String; = "enhance:"


# instance fields
.field private packagePrefixes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private verbose:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 205
    .local p1, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    if-eqz p1, :cond_0

    .line 207
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/persist/model/ClassEnhancer;->packagePrefixes:Ljava/util/Set;

    .line 208
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 209
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/sleepycat/persist/model/ClassEnhancer;->packagePrefixes:Ljava/util/Set;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 210
    .end local v1    # "name":Ljava/lang/String;
    goto :goto_0

    .line 212
    :cond_0
    return-void
.end method

.method private enhanceBytes([B)[B
    .locals 5
    .param p1, "bytes"    # [B

    .line 308
    new-instance v0, Lcom/sleepycat/asm/ClassWriter;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/sleepycat/asm/ClassWriter;-><init>(I)V

    .line 309
    .local v0, "writer":Lcom/sleepycat/asm/ClassWriter;
    move-object v1, v0

    .line 312
    .local v1, "visitor":Lcom/sleepycat/asm/ClassVisitor;
    new-instance v2, Lcom/sleepycat/persist/model/BytecodeEnhancer;

    invoke-direct {v2, v1}, Lcom/sleepycat/persist/model/BytecodeEnhancer;-><init>(Lcom/sleepycat/asm/ClassVisitor;)V

    move-object v1, v2

    .line 315
    new-instance v2, Lcom/sleepycat/asm/ClassReader;

    invoke-direct {v2, p1}, Lcom/sleepycat/asm/ClassReader;-><init>([B)V

    .line 322
    .local v2, "reader":Lcom/sleepycat/asm/ClassReader;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v1, v3}, Lcom/sleepycat/asm/ClassReader;->accept(Lcom/sleepycat/asm/ClassVisitor;I)V

    .line 323
    invoke-virtual {v0}, Lcom/sleepycat/asm/ClassWriter;->toByteArray()[B

    move-result-object v3
    :try_end_0
    .catch Lcom/sleepycat/persist/model/BytecodeEnhancer$NotPersistentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 324
    :catch_0
    move-exception v3

    .line 326
    .local v3, "e":Lcom/sleepycat/persist/model/BytecodeEnhancer$NotPersistentException;
    const/4 v4, 0x0

    return-object v4
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "verbose":Z
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v1, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 102
    aget-object v3, p0, v2

    .line 103
    .local v3, "arg":Ljava/lang/String;
    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 104
    const-string v4, "-v"

    aget-object v5, p0, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 105
    const/4 v0, 0x1

    goto :goto_1

    .line 107
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown arg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "args":[Ljava/lang/String;
    throw v4

    .line 111
    .restart local p0    # "args":[Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    .end local v3    # "arg":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Lcom/sleepycat/persist/model/ClassEnhancer;

    invoke-direct {v2}, Lcom/sleepycat/persist/model/ClassEnhancer;-><init>()V

    .line 115
    .local v2, "enhancer":Lcom/sleepycat/persist/model/ClassEnhancer;
    invoke-virtual {v2, v0}, Lcom/sleepycat/persist/model/ClassEnhancer;->setVerbose(Z)V

    .line 116
    const/4 v3, 0x0

    .line 117
    .local v3, "nFiles":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 118
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v2, v5}, Lcom/sleepycat/persist/model/ClassEnhancer;->enhanceFile(Ljava/io/File;)I

    move-result v6

    add-int/2addr v3, v6

    .line 119
    .end local v5    # "file":Ljava/io/File;
    goto :goto_2

    .line 120
    :cond_3
    if-lez v3, :cond_4

    .line 121
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enhanced: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " files"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v0    # "verbose":Z
    .end local v1    # "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v2    # "enhancer":Lcom/sleepycat/persist/model/ClassEnhancer;
    .end local v3    # "nFiles":I
    :cond_4
    nop

    .line 127
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    throw v0
.end method

.method public static premain(Ljava/lang/String;Ljava/lang/instrument/Instrumentation;)V
    .locals 7
    .param p0, "args"    # Ljava/lang/String;
    .param p1, "inst"    # Ljava/lang/instrument/Instrumentation;

    .line 139
    const-string v0, "enhance:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 144
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 147
    .local v1, "verbose":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 148
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object v0, v2

    .line 149
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ","

    invoke-direct {v2, p0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .local v2, "tokens":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 151
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "token":Ljava/lang/String;
    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 153
    const-string v4, "-v"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    const/4 v1, 0x1

    goto :goto_1

    .line 156
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown javaagent arg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 160
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    .end local v3    # "token":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 164
    .end local v2    # "tokens":Ljava/util/StringTokenizer;
    :cond_2
    new-instance v2, Lcom/sleepycat/persist/model/ClassEnhancer;

    invoke-direct {v2, v0}, Lcom/sleepycat/persist/model/ClassEnhancer;-><init>(Ljava/util/Set;)V

    .line 165
    .local v2, "enhancer":Lcom/sleepycat/persist/model/ClassEnhancer;
    invoke-virtual {v2, v1}, Lcom/sleepycat/persist/model/ClassEnhancer;->setVerbose(Z)V

    .line 166
    invoke-interface {p1, v2}, Ljava/lang/instrument/Instrumentation;->addTransformer(Ljava/lang/instrument/ClassFileTransformer;)V

    .line 167
    return-void

    .line 140
    .end local v0    # "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "verbose":Z
    .end local v2    # "enhancer":Lcom/sleepycat/persist/model/ClassEnhancer;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown javaagent args: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Args must start with: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readFile(Ljava/io/File;)[B
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 282
    .local v0, "bytes":[B
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 284
    .local v1, "in":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 287
    nop

    .line 288
    return-object v0

    .line 286
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v2
.end method

.method private writeFile(Ljava/io/File;[B)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 296
    .local v0, "out":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 299
    nop

    .line 300
    return-void

    .line 298
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    throw v1
.end method


# virtual methods
.method public enhance(Ljava/lang/String;[B)[B
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "classBytes"    # [B

    .line 240
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sleepycat/persist/model/ClassEnhancer;->packagePrefixes:Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 241
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 242
    .local v1, "prefix":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    invoke-direct {p0, p2}, Lcom/sleepycat/persist/model/ClassEnhancer;->enhanceBytes([B)[B

    move-result-object v0

    return-object v0

    .line 245
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 246
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 248
    :cond_2
    invoke-direct {p0, p2}, Lcom/sleepycat/persist/model/ClassEnhancer;->enhanceBytes([B)[B

    move-result-object v0

    return-object v0
.end method

.method enhanceFile(Ljava/io/File;)I
    .locals 7
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, "nFiles":I
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 257
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, "names":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 259
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 260
    new-instance v3, Ljava/io/File;

    aget-object v4, v1, v2

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/sleepycat/persist/model/ClassEnhancer;->enhanceFile(Ljava/io/File;)I

    move-result v3

    add-int/2addr v0, v3

    .line 259
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    .end local v1    # "names":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_0
    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".class"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    invoke-direct {p0, p1}, Lcom/sleepycat/persist/model/ClassEnhancer;->readFile(Ljava/io/File;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sleepycat/persist/model/ClassEnhancer;->enhanceBytes([B)[B

    move-result-object v1

    .line 265
    .local v1, "newBytes":[B
    if-eqz v1, :cond_2

    .line 266
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 267
    .local v2, "modified":J
    invoke-direct {p0, p1, v1}, Lcom/sleepycat/persist/model/ClassEnhancer;->writeFile(Ljava/io/File;[B)V

    .line 268
    invoke-virtual {p1, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 269
    add-int/lit8 v0, v0, 0x1

    .line 270
    iget-boolean v4, p0, Lcom/sleepycat/persist/model/ClassEnhancer;->verbose:Z

    if-eqz v4, :cond_2

    .line 271
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enhanced: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 275
    .end local v1    # "newBytes":[B
    .end local v2    # "modified":J
    :cond_2
    :goto_1
    return v0
.end method

.method public getVerbose()Z
    .locals 1

    .line 195
    iget-boolean v0, p0, Lcom/sleepycat/persist/model/ClassEnhancer;->verbose:Z

    return v0
.end method

.method public setVerbose(Z)V
    .locals 0
    .param p1, "verbose"    # Z

    .line 184
    iput-boolean p1, p0, Lcom/sleepycat/persist/model/ClassEnhancer;->verbose:Z

    .line 185
    return-void
.end method

.method public transform(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;Ljava/security/ProtectionDomain;[B)[B
    .locals 4
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "className"    # Ljava/lang/String;
    .param p4, "protectionDomain"    # Ljava/security/ProtectionDomain;
    .param p5, "classfileBuffer"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/security/ProtectionDomain;",
            "[B)[B"
        }
    .end annotation

    .line 219
    .local p3, "classBeingRedefined":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    .line 220
    invoke-virtual {p0, p2, p5}, Lcom/sleepycat/persist/model/ClassEnhancer;->enhance(Ljava/lang/String;[B)[B

    move-result-object v0

    .line 221
    .local v0, "bytes":[B
    iget-boolean v1, p0, Lcom/sleepycat/persist/model/ClassEnhancer;->verbose:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 222
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enhanced: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 224
    :cond_0
    return-object v0
.end method
