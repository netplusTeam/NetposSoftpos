.class public Lbsh/commands/dir;
.super Ljava/lang/Object;
.source "dir.java"


# static fields
.field static final months:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 44
    const-string v0, "Jan"

    const-string v1, "Feb"

    const-string v2, "Mar"

    const-string v3, "Apr"

    const-string v4, "May"

    const-string v5, "Jun"

    const-string v6, "Jul"

    const-string v7, "Aug"

    const-string v8, "Sep"

    const-string v9, "Oct"

    const-string v10, "Nov"

    const-string v11, "Dec"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbsh/commands/dir;->months:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static invoke(Lbsh/Interpreter;Lbsh/CallStack;)V
    .locals 1
    .param p0, "env"    # Lbsh/Interpreter;
    .param p1, "callstack"    # Lbsh/CallStack;

    .line 56
    const-string v0, "."

    .line 57
    .local v0, "dir":Ljava/lang/String;
    invoke-static {p0, p1, v0}, Lbsh/commands/dir;->invoke(Lbsh/Interpreter;Lbsh/CallStack;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static invoke(Lbsh/Interpreter;Lbsh/CallStack;Ljava/lang/String;)V
    .locals 17
    .param p0, "env"    # Lbsh/Interpreter;
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "dir"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 69
    :try_start_0
    invoke-virtual {v1, v2}, Lbsh/Interpreter;->pathToFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "path":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lbsh/Interpreter;->pathToFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .local v3, "file":Ljava/io/File;
    nop

    .line 76
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v16, v0

    goto/16 :goto_3

    .line 80
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' is not a directory"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lbsh/Interpreter;->println(Ljava/lang/Object;)V

    .line 84
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "files":[Ljava/lang/String;
    invoke-static {v4}, Lbsh/StringUtil;->bubbleSort([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 87
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_8

    .line 88
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v6, "f":Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 90
    .local v7, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v8

    const-string v9, "-"

    if-eqz v8, :cond_2

    const-string/jumbo v8, "r"

    goto :goto_1

    :cond_2
    move-object v8, v9

    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    invoke-virtual {v6}, Ljava/io/File;->canWrite()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v9, "w"

    :cond_3
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    new-instance v9, Ljava/util/Date;

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 96
    .local v9, "d":Ljava/util/Date;
    new-instance v10, Ljava/util/GregorianCalendar;

    invoke-direct {v10}, Ljava/util/GregorianCalendar;-><init>()V

    .line 97
    .local v10, "c":Ljava/util/GregorianCalendar;
    invoke-virtual {v10, v9}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 98
    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v11

    .line 99
    .local v11, "day":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lbsh/commands/dir;->months:[Ljava/lang/String;

    const/4 v14, 0x2

    invoke-virtual {v10, v14}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v14

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    const/16 v12, 0xa

    if-ge v11, v12, :cond_4

    .line 101
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    :cond_4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    const/16 v12, 0x8

    .line 107
    .local v12, "fieldlen":I
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 108
    .local v13, "len":Ljava/lang/StringBuffer;
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_2
    if-ge v14, v12, :cond_5

    .line 109
    invoke-virtual {v13, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 110
    .end local v14    # "j":I
    :cond_5
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v14

    move-object/from16 v16, v0

    .end local v0    # "path":Ljava/lang/String;
    .local v16, "path":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v13, v0, v14, v15}, Ljava/lang/StringBuffer;->insert(IJ)Ljava/lang/StringBuffer;

    .line 111
    invoke-virtual {v13, v12}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 113
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 114
    .local v14, "si":I
    const/4 v15, -0x1

    if-eq v14, v15, :cond_6

    .line 115
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 116
    .local v15, "pad":Ljava/lang/String;
    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 117
    invoke-virtual {v13, v0, v15}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    .end local v15    # "pad":Ljava/lang/String;
    :cond_6
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 124
    const-string v0, "/"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    :cond_7
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbsh/Interpreter;->println(Ljava/lang/Object;)V

    .line 87
    .end local v6    # "f":Ljava/io/File;
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    .end local v9    # "d":Ljava/util/Date;
    .end local v10    # "c":Ljava/util/GregorianCalendar;
    .end local v11    # "day":I
    .end local v12    # "fieldlen":I
    .end local v13    # "len":Ljava/lang/StringBuffer;
    .end local v14    # "si":I
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v16

    goto/16 :goto_0

    .line 128
    .end local v5    # "i":I
    .end local v16    # "path":Ljava/lang/String;
    .restart local v0    # "path":Ljava/lang/String;
    :cond_8
    return-void

    .line 76
    .end local v4    # "files":[Ljava/lang/String;
    :cond_9
    move-object/from16 v16, v0

    .line 77
    .end local v0    # "path":Ljava/lang/String;
    .restart local v16    # "path":Ljava/lang/String;
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t read "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbsh/Interpreter;->println(Ljava/lang/Object;)V

    .line 78
    return-void

    .line 71
    .end local v3    # "file":Ljava/io/File;
    .end local v16    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error reading path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lbsh/Interpreter;->println(Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public static usage()Ljava/lang/String;
    .locals 1

    .line 48
    const-string/jumbo v0, "usage: dir( String dir )\n       dir()"

    return-object v0
.end method
