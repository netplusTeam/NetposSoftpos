.class public Lorg/jline/terminal/impl/CursorSupport;
.super Ljava/lang/Object;
.source "CursorSupport.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCursorPosition(Lorg/jline/terminal/Terminal;Ljava/util/function/IntConsumer;)Lorg/jline/terminal/Cursor;
    .locals 14
    .param p0, "terminal"    # Lorg/jline/terminal/Terminal;
    .param p1, "discarded"    # Ljava/util/function/IntConsumer;

    .line 26
    :try_start_0
    sget-object v0, Lorg/jline/utils/InfoCmp$Capability;->user6:Lorg/jline/utils/InfoCmp$Capability;

    invoke-interface {p0, v0}, Lorg/jline/terminal/Terminal;->getStringCapability(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "u6":Ljava/lang/String;
    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->user7:Lorg/jline/utils/InfoCmp$Capability;

    invoke-interface {p0, v1}, Lorg/jline/terminal/Terminal;->getStringCapability(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, "u7":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v0, :cond_7

    if-nez v1, :cond_0

    goto/16 :goto_7

    .line 32
    :cond_0
    const/4 v3, 0x0

    .line 33
    .local v3, "inc1":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .local v4, "patb":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 35
    .local v5, "index":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 37
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .local v6, "index":I
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v7, v5

    .local v7, "ch":C
    sparse-switch v5, :sswitch_data_0

    .line 65
    packed-switch v7, :pswitch_data_0

    goto :goto_3

    .line 39
    :sswitch_0
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "index":I
    .restart local v5    # "index":I
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sparse-switch v6, :sswitch_data_1

    .line 45
    new-instance v2, Ljava/lang/IllegalArgumentException;

    goto :goto_1

    .line 42
    :sswitch_1
    const-string v6, "\\x1b"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    goto :goto_4

    .line 45
    :goto_1
    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local p0    # "terminal":Lorg/jline/terminal/Terminal;
    .end local p1    # "discarded":Ljava/util/function/IntConsumer;
    throw v2

    .line 49
    .end local v5    # "index":I
    .restart local v6    # "index":I
    .restart local p0    # "terminal":Lorg/jline/terminal/Terminal;
    .restart local p1    # "discarded":Ljava/util/function/IntConsumer;
    :sswitch_2
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "index":I
    .restart local v5    # "index":I
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 50
    .end local v7    # "ch":C
    .local v6, "ch":C
    sparse-switch v6, :sswitch_data_2

    .line 61
    new-instance v2, Ljava/lang/IllegalArgumentException;

    goto :goto_2

    .line 55
    :sswitch_3
    const/4 v3, 0x1

    .line 56
    goto :goto_4

    .line 58
    :sswitch_4
    const-string v7, "([0-9]+)"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    goto :goto_4

    .line 52
    :sswitch_5
    const/16 v7, 0x25

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    goto :goto_4

    .line 61
    :goto_2
    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local p0    # "terminal":Lorg/jline/terminal/Terminal;
    .end local p1    # "discarded":Ljava/util/function/IntConsumer;
    throw v2

    .line 67
    .end local v5    # "index":I
    .local v6, "index":I
    .restart local v7    # "ch":C
    .restart local p0    # "terminal":Lorg/jline/terminal/Terminal;
    .restart local p1    # "discarded":Ljava/util/function/IntConsumer;
    :pswitch_0
    const/16 v5, 0x5c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    :goto_3
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v5, v6

    .line 73
    .end local v6    # "index":I
    .end local v7    # "ch":C
    .restart local v5    # "index":I
    :goto_4
    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 76
    .local v6, "pattern":Ljava/util/regex/Pattern;
    invoke-interface {p0}, Lorg/jline/terminal/Terminal;->writer()Ljava/io/PrintWriter;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v1, v8}, Lorg/jline/utils/Curses;->tputs(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-interface {p0}, Lorg/jline/terminal/Terminal;->flush()V

    .line 78
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v7, "sb":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 81
    .local v8, "start":I
    :goto_5
    invoke-interface {p0}, Lorg/jline/terminal/Terminal;->reader()Lorg/jline/utils/NonBlockingReader;

    move-result-object v9

    invoke-virtual {v9}, Lorg/jline/utils/NonBlockingReader;->read()I

    move-result v9

    .line 82
    .local v9, "c":I
    if-gez v9, :cond_2

    .line 83
    return-object v2

    .line 85
    :cond_2
    int-to-char v10, v9

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 87
    .local v10, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 88
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 89
    .local v2, "y":I
    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 90
    .local v11, "x":I
    if-eqz v3, :cond_3

    .line 91
    add-int/lit8 v11, v11, -0x1

    .line 92
    add-int/lit8 v2, v2, -0x1

    .line 94
    :cond_3
    if-eqz p1, :cond_4

    .line 95
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_6
    if-ge v12, v8, :cond_4

    .line 96
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v13

    invoke-interface {p1, v13}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 95
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 99
    .end local v12    # "i":I
    :cond_4
    new-instance v12, Lorg/jline/terminal/Cursor;

    invoke-direct {v12, v11, v2}, Lorg/jline/terminal/Cursor;-><init>(II)V

    return-object v12

    .line 100
    .end local v2    # "y":I
    .end local v11    # "x":I
    :cond_5
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->hitEnd()Z

    move-result v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v11, :cond_6

    .line 101
    add-int/lit8 v8, v8, 0x1

    .line 103
    .end local v9    # "c":I
    .end local v10    # "matcher":Ljava/util/regex/Matcher;
    :cond_6
    goto :goto_5

    .line 29
    .end local v3    # "inc1":Z
    .end local v4    # "patb":Ljava/lang/StringBuilder;
    .end local v5    # "index":I
    .end local v6    # "pattern":Ljava/util/regex/Pattern;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "start":I
    :cond_7
    :goto_7
    return-object v2

    .line 104
    .end local v0    # "u6":Ljava/lang/String;
    .end local v1    # "u7":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/IOError;

    invoke-direct {v1, v0}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_2
        0x5c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x45 -> :sswitch_1
        0x65 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x25 -> :sswitch_5
        0x64 -> :sswitch_4
        0x69 -> :sswitch_3
    .end sparse-switch
.end method
