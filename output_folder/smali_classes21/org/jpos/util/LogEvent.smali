.class public Lorg/jpos/util/LogEvent;
.super Ljava/lang/Object;
.source "LogEvent.java"


# instance fields
.field private createdAt:Ljava/time/Instant;

.field private dumpedAt:Ljava/time/Instant;

.field private honorSourceLogger:Z

.field private noArmor:Z

.field private final payLoad:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private source:Lorg/jpos/util/LogSource;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    const-string v0, "info"

    invoke-direct {p0, v0}, Lorg/jpos/util/LogEvent;-><init>(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/jpos/util/LogEvent;->tag:Ljava/lang/String;

    .line 50
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/util/LogEvent;->createdAt:Ljava/time/Instant;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/util/LogEvent;->payLoad:Ljava/util/List;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/Object;

    .line 58
    invoke-direct {p0, p1}, Lorg/jpos/util/LogEvent;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, p2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Lorg/jpos/util/LogSource;
    .param p2, "tag"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p2}, Lorg/jpos/util/LogEvent;-><init>(Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lorg/jpos/util/LogEvent;->source:Lorg/jpos/util/LogSource;

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/util/LogEvent;->honorSourceLogger:Z

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/jpos/util/LogSource;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "source"    # Lorg/jpos/util/LogSource;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/Object;

    .line 67
    invoke-direct {p0, p2}, Lorg/jpos/util/LogEvent;-><init>(Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, Lorg/jpos/util/LogEvent;->source:Lorg/jpos/util/LogSource;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/util/LogEvent;->honorSourceLogger:Z

    .line 70
    invoke-virtual {p0, p3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 71
    return-void
.end method


# virtual methods
.method public addMessage(Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lorg/jpos/util/LogEvent;->payLoad:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

.method public addMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "tagname"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lorg/jpos/util/LogEvent;->payLoad:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method public dump(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 8
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "outer"    # Ljava/lang/String;

    .line 122
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jpos/util/LogEvent;->dumpHeader(Ljava/io/PrintStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "indent":Ljava/lang/String;
    iget-object v1, p0, Lorg/jpos/util/LogEvent;->payLoad:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lorg/jpos/util/LogEvent;->tag:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jpos/util/LogEvent;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 129
    :cond_0
    iget-object v1, p0, Lorg/jpos/util/LogEvent;->tag:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 130
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jpos/util/LogEvent;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 132
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "newIndent":Ljava/lang/String;
    goto :goto_0

    .line 135
    .end local v1    # "newIndent":Ljava/lang/String;
    :cond_2
    const-string v1, ""

    .line 136
    .restart local v1    # "newIndent":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lorg/jpos/util/LogEvent;->payLoad:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 137
    :try_start_1
    iget-object v3, p0, Lorg/jpos/util/LogEvent;->payLoad:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 138
    .local v4, "o":Ljava/lang/Object;
    instance-of v5, v4, Lorg/jpos/util/Loggeable;

    if-eqz v5, :cond_3

    .line 139
    move-object v5, v4

    check-cast v5, Lorg/jpos/util/Loggeable;

    invoke-interface {v5, p1, v1}, Lorg/jpos/util/Loggeable;->dump(Ljava/io/PrintStream;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 140
    :cond_3
    instance-of v5, v4, Ljava/sql/SQLException;

    if-eqz v5, :cond_4

    .line 141
    move-object v5, v4

    check-cast v5, Ljava/sql/SQLException;

    .line 142
    .local v5, "e":Ljava/sql/SQLException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<SQLException>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 143
    invoke-virtual {v5}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</SQLException>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 142
    invoke-virtual {p1, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<SQLState>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 145
    invoke-virtual {v5}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</SQLState>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 144
    invoke-virtual {p1, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<VendorError>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 147
    invoke-virtual {v5}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</VendorError>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 146
    invoke-virtual {p1, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 148
    move-object v6, v4

    check-cast v6, Ljava/lang/Throwable;

    invoke-virtual {v6, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 149
    .end local v5    # "e":Ljava/sql/SQLException;
    goto/16 :goto_4

    :cond_4
    instance-of v5, v4, Ljava/lang/Throwable;

    if-eqz v5, :cond_5

    .line 150
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<exception name=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v4

    check-cast v6, Ljava/lang/Throwable;

    .line 151
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 150
    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 153
    move-object v5, v4

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v5, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 154
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</exception>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 155
    :cond_5
    instance-of v5, v4, [Ljava/lang/Object;

    if-eqz v5, :cond_8

    .line 156
    move-object v5, v4

    check-cast v5, [Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    .line 157
    .local v5, "oa":[Ljava/lang/Object;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 158
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    array-length v7, v5

    if-ge v6, v7, :cond_7

    .line 159
    if-lez v6, :cond_6

    .line 160
    const-string v7, ","

    invoke-virtual {p1, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 161
    :cond_6
    aget-object v7, v5, v6

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 158
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 163
    .end local v6    # "j":I
    :cond_7
    const-string v6, "]"

    invoke-virtual {p1, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 164
    .end local v5    # "oa":[Ljava/lang/Object;
    goto :goto_4

    :cond_8
    instance-of v5, v4, Lorg/jdom2/Element;

    if-eqz v5, :cond_9

    .line 165
    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 166
    new-instance v5, Lorg/jdom2/output/XMLOutputter;

    invoke-static {}, Lorg/jdom2/output/Format;->getPrettyFormat()Lorg/jdom2/output/Format;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jdom2/output/XMLOutputter;-><init>(Lorg/jdom2/output/Format;)V

    .line 167
    .local v5, "out":Lorg/jdom2/output/XMLOutputter;
    invoke-virtual {v5}, Lorg/jdom2/output/XMLOutputter;->getFormat()Lorg/jdom2/output/Format;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Lorg/jdom2/output/Format;->setLineSeparator(Ljava/lang/String;)Lorg/jdom2/output/Format;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    :try_start_2
    move-object v6, v4

    check-cast v6, Lorg/jdom2/Element;

    invoke-virtual {v5, v6, p1}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/Element;Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    goto :goto_3

    .line 170
    :catch_0
    move-exception v6

    .line 171
    .local v6, "ex":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v6, p1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 173
    .end local v6    # "ex":Ljava/io/IOException;
    :goto_3
    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 174
    .end local v5    # "out":Lorg/jdom2/output/XMLOutputter;
    goto :goto_4

    :cond_9
    if-eqz v4, :cond_a

    .line 175
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 177
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 179
    .end local v4    # "o":Ljava/lang/Object;
    :goto_4
    goto/16 :goto_1

    .line 180
    :cond_b
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 181
    :try_start_4
    iget-object v2, p0, Lorg/jpos/util/LogEvent;->tag:Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jpos/util/LogEvent;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    .line 180
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local p1    # "p":Ljava/io/PrintStream;
    .end local p2    # "outer":Ljava/lang/String;
    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 184
    .end local v0    # "indent":Ljava/lang/String;
    .end local v1    # "newIndent":Ljava/lang/String;
    .restart local p1    # "p":Ljava/io/PrintStream;
    .restart local p2    # "outer":Ljava/lang/String;
    :catchall_1
    move-exception v0

    .line 185
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_7
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 188
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_c
    :goto_5
    invoke-virtual {p0, p1, p2}, Lorg/jpos/util/LogEvent;->dumpTrailer(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 189
    nop

    .line 190
    return-void

    .line 188
    :catchall_2
    move-exception v0

    invoke-virtual {p0, p1, p2}, Lorg/jpos/util/LogEvent;->dumpTrailer(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 189
    throw v0
.end method

.method protected dumpHeader(Ljava/io/PrintStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;

    .line 94
    iget-boolean v0, p0, Lorg/jpos/util/LogEvent;->noArmor:Z

    if-eqz v0, :cond_0

    .line 95
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/jpos/util/LogEvent;->dumpedAt:Ljava/time/Instant;

    if-nez v0, :cond_1

    .line 98
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/util/LogEvent;->dumpedAt:Ljava/time/Instant;

    .line 99
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "<log realm=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p0}, Lorg/jpos/util/LogEvent;->getRealm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, "\" at=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-object v1, p0, Lorg/jpos/util/LogEvent;->dumpedAt:Ljava/time/Instant;

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    iget-object v1, p0, Lorg/jpos/util/LogEvent;->createdAt:Ljava/time/Instant;

    iget-object v2, p0, Lorg/jpos/util/LogEvent;->dumpedAt:Ljava/time/Instant;

    invoke-static {v1, v2}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v1

    .line 106
    .local v1, "elapsed":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    .line 107
    const-string v3, " lifespan=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 109
    const-string v3, "ms\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_2
    const/16 v3, 0x3e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "elapsed":J
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected dumpTrailer(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;

    .line 117
    iget-boolean v0, p0, Lorg/jpos/util/LogEvent;->noArmor:Z

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</log>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 119
    :cond_0
    return-void
.end method

.method public getPayLoad()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lorg/jpos/util/LogEvent;->payLoad:Ljava/util/List;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lorg/jpos/util/LogEvent;->source:Lorg/jpos/util/LogSource;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/jpos/util/LogSource;->getRealm()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getSource()Lorg/jpos/util/LogSource;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/jpos/util/LogEvent;->source:Lorg/jpos/util/LogSource;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/jpos/util/LogEvent;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public isHonorSourceLogger()Z
    .locals 1

    .line 233
    iget-boolean v0, p0, Lorg/jpos/util/LogEvent;->honorSourceLogger:Z

    return v0
.end method

.method public setNoArmor(Z)V
    .locals 0
    .param p1, "noArmor"    # Z

    .line 91
    iput-boolean p1, p0, Lorg/jpos/util/LogEvent;->noArmor:Z

    .line 92
    return-void
.end method

.method public setSource(Lorg/jpos/util/LogSource;)V
    .locals 0
    .param p1, "source"    # Lorg/jpos/util/LogSource;

    .line 88
    iput-object p1, p0, Lorg/jpos/util/LogEvent;->source:Lorg/jpos/util/LogSource;

    .line 89
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lorg/jpos/util/LogEvent;->tag:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 224
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/jpos/util/LogEvent;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 216
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 217
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 218
    .local v1, "p":Ljava/io/PrintStream;
    invoke-virtual {p0}, Lorg/jpos/util/LogEvent;->getPayLoad()Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 219
    :try_start_0
    invoke-virtual {p0, v1, p1}, Lorg/jpos/util/LogEvent;->dump(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 220
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 220
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
