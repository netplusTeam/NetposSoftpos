.class public Lorg/jpos/util/SimpleMsg;
.super Ljava/lang/Object;
.source "SimpleMsg.java"

# interfaces
.implements Lorg/jpos/util/Loggeable;


# static fields
.field static final STACKTRACE_EXTRA_INDENT:Ljava/lang/String; = "    "

.field static final STACKTRACE_TAB_REPLACE:Ljava/lang/String; = "        "


# instance fields
.field msgContent:Ljava/lang/Object;

.field msgName:Ljava/lang/String;

.field tagName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "msgContent"    # Ljava/lang/Object;

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "msgName"    # Ljava/lang/String;
    .param p3, "msgContent"    # Ljava/lang/Object;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/jpos/util/SimpleMsg;->tagName:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lorg/jpos/util/SimpleMsg;->msgName:Ljava/lang/String;

    .line 52
    instance-of v0, p3, [B

    if-eqz v0, :cond_0

    .line 53
    move-object v0, p3

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/util/SimpleMsg;->msgContent:Ljava/lang/Object;

    goto :goto_0

    .line 55
    :cond_0
    iput-object p3, p0, Lorg/jpos/util/SimpleMsg;->msgContent:Ljava/lang/Object;

    .line 56
    :goto_0
    return-void
.end method

.method private formatThrowable(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 8
    .param p1, "indent"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 114
    const-string v0, "\n"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "inde":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .local v2, "os":Ljava/io/OutputStream;
    nop

    .line 117
    :try_start_1
    new-instance v3, Ljava/io/PrintStream;

    invoke-direct {v3, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 115
    .local v3, "ps":Ljava/io/PrintStream;
    nop

    .line 120
    :try_start_2
    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 123
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, "res":Ljava/lang/String;
    const-string v5, "\n\t"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "        "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 125
    const-string v5, "\nCaused by:"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "Caused by:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    .end local v4    # "res":Ljava/lang/String;
    .local v0, "res":Ljava/lang/String;
    nop

    .line 127
    :try_start_3
    invoke-virtual {v3}, Ljava/io/PrintStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 126
    return-object v0

    .line 115
    .end local v0    # "res":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .end local v1    # "inde":Ljava/lang/String;
    .end local v2    # "os":Ljava/io/OutputStream;
    .end local v3    # "ps":Ljava/io/PrintStream;
    .end local p1    # "indent":Ljava/lang/String;
    .end local p2    # "t":Ljava/lang/Throwable;
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 127
    .restart local v1    # "inde":Ljava/lang/String;
    .restart local v2    # "os":Ljava/io/OutputStream;
    .restart local v3    # "ps":Ljava/io/PrintStream;
    .restart local p1    # "indent":Ljava/lang/String;
    .restart local p2    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v4

    :try_start_6
    invoke-virtual {v3}, Ljava/io/PrintStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v5

    :try_start_7
    invoke-virtual {v0, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "inde":Ljava/lang/String;
    .end local v2    # "os":Ljava/io/OutputStream;
    .end local p1    # "indent":Ljava/lang/String;
    .end local p2    # "t":Ljava/lang/Throwable;
    :goto_0
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 115
    .end local v3    # "ps":Ljava/io/PrintStream;
    .restart local v1    # "inde":Ljava/lang/String;
    .restart local v2    # "os":Ljava/io/OutputStream;
    .restart local p1    # "indent":Ljava/lang/String;
    .restart local p2    # "t":Ljava/lang/Throwable;
    :catchall_3
    move-exception v0

    .end local v1    # "inde":Ljava/lang/String;
    .end local v2    # "os":Ljava/io/OutputStream;
    .end local p1    # "indent":Ljava/lang/String;
    .end local p2    # "t":Ljava/lang/Throwable;
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 127
    .restart local v1    # "inde":Ljava/lang/String;
    .restart local v2    # "os":Ljava/io/OutputStream;
    .restart local p1    # "indent":Ljava/lang/String;
    .restart local p2    # "t":Ljava/lang/Throwable;
    :catchall_4
    move-exception v3

    :try_start_9
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v4

    :try_start_a
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "inde":Ljava/lang/String;
    .end local p1    # "indent":Ljava/lang/String;
    .end local p2    # "t":Ljava/lang/Throwable;
    :goto_1
    throw v3
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .end local v2    # "os":Ljava/io/OutputStream;
    .restart local v1    # "inde":Ljava/lang/String;
    .restart local p1    # "indent":Ljava/lang/String;
    .restart local p2    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 128
    .local v0, "ex":Ljava/io/IOException;
    const-string v2, ""

    return-object v2
.end method


# virtual methods
.method public dump(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 8
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "inner":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jpos/util/SimpleMsg;->tagName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lorg/jpos/util/SimpleMsg;->msgName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jpos/util/SimpleMsg;->msgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 76
    :cond_0
    const/4 v1, 0x0

    .line 77
    .local v1, "cl":Ljava/util/Collection;
    iget-object v2, p0, Lorg/jpos/util/SimpleMsg;->msgContent:Ljava/lang/Object;

    instance-of v3, v2, [Ljava/lang/Object;

    const-string v4, ">"

    if-eqz v3, :cond_1

    .line 78
    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 79
    :cond_1
    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_2

    .line 80
    move-object v1, v2

    check-cast v1, Ljava/util/Collection;

    goto :goto_0

    .line 81
    :cond_2
    instance-of v3, v2, Lorg/jpos/util/Loggeable;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    .line 82
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 83
    :cond_3
    instance-of v3, v2, Ljava/lang/Throwable;

    if-eqz v3, :cond_4

    .line 84
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 85
    :cond_4
    iget-object v3, p0, Lorg/jpos/util/SimpleMsg;->msgName:Ljava/lang/String;

    const-string v7, "/>"

    if-eqz v3, :cond_5

    if-nez v2, :cond_5

    .line 86
    invoke-virtual {p1, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    return-void

    .line 88
    :cond_5
    if-eqz v3, :cond_6

    .line 89
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 90
    :cond_6
    if-eqz v2, :cond_b

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jpos/util/SimpleMsg;->msgContent:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 97
    :goto_0
    if-eqz v1, :cond_a

    .line 98
    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 99
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 100
    .local v3, "o":Ljava/lang/Object;
    instance-of v5, v3, Lorg/jpos/util/Loggeable;

    if-eqz v5, :cond_7

    .line 101
    move-object v5, v3

    check-cast v5, Lorg/jpos/util/Loggeable;

    invoke-interface {v5, p1, v0}, Lorg/jpos/util/Loggeable;->dump(Ljava/io/PrintStream;Ljava/lang/String;)V

    goto :goto_2

    .line 102
    :cond_7
    instance-of v5, v3, Ljava/lang/Throwable;

    if-eqz v5, :cond_8

    .line 103
    move-object v5, v3

    check-cast v5, Ljava/lang/Throwable;

    invoke-direct {p0, p2, v5}, Lorg/jpos/util/SimpleMsg;->formatThrowable(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 105
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 106
    .end local v3    # "o":Ljava/lang/Object;
    :goto_2
    goto :goto_1

    .line 107
    :cond_9
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 110
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "</"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jpos/util/SimpleMsg;->tagName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 111
    return-void

    .line 93
    :cond_b
    invoke-virtual {p1, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public getMsgContent()Ljava/lang/Object;
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/jpos/util/SimpleMsg;->msgContent:Ljava/lang/Object;

    return-object v0
.end method

.method public setMsgContent(Ljava/lang/Object;)V
    .locals 0
    .param p1, "msgContent"    # Ljava/lang/Object;

    .line 133
    iput-object p1, p0, Lorg/jpos/util/SimpleMsg;->msgContent:Ljava/lang/Object;

    .line 134
    return-void
.end method
