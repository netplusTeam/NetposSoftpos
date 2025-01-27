.class public Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl;
.super Ljava/lang/Object;
.source "ShellFactoryImpl.java"

# interfaces
.implements Lorg/apache/sshd/server/command/Command;
.implements Lorg/apache/sshd/server/SessionAware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/ssh/ShellFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShellImpl"
.end annotation


# instance fields
.field private callback:Lorg/apache/sshd/server/ExitCallback;

.field private closed:Z

.field private err:Ljava/io/OutputStream;

.field private in:Ljava/io/InputStream;

.field private out:Ljava/io/OutputStream;

.field private session:Lorg/apache/sshd/server/session/ServerSession;

.field final synthetic this$0:Lorg/jline/builtins/ssh/ShellFactoryImpl;


# direct methods
.method public constructor <init>(Lorg/jline/builtins/ssh/ShellFactoryImpl;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jline/builtins/ssh/ShellFactoryImpl;

    .line 70
    iput-object p1, p0, Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl;->this$0:Lorg/jline/builtins/ssh/ShellFactoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$1(Lorg/jline/terminal/Terminal;Lorg/apache/sshd/server/Environment;Lorg/apache/sshd/server/Signal;)V
    .locals 4
    .param p0, "terminal"    # Lorg/jline/terminal/Terminal;
    .param p1, "env"    # Lorg/apache/sshd/server/Environment;
    .param p2, "signals"    # Lorg/apache/sshd/server/Signal;

    .line 220
    new-instance v0, Lorg/jline/terminal/Size;

    invoke-interface {p1}, Lorg/apache/sshd/server/Environment;->getEnv()Ljava/util/Map;

    move-result-object v1

    const-string v2, "COLUMNS"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 221
    invoke-interface {p1}, Lorg/apache/sshd/server/Environment;->getEnv()Ljava/util/Map;

    move-result-object v2

    const-string v3, "LINES"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/jline/terminal/Size;-><init>(II)V

    .line 220
    invoke-interface {p0, v0}, Lorg/jline/terminal/Terminal;->setSize(Lorg/jline/terminal/Size;)V

    .line 222
    sget-object v0, Lorg/jline/terminal/Terminal$Signal;->WINCH:Lorg/jline/terminal/Terminal$Signal;

    invoke-interface {p0, v0}, Lorg/jline/terminal/Terminal;->raise(Lorg/jline/terminal/Terminal$Signal;)V

    .line 223
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 5

    .line 232
    iget-boolean v0, p0, Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl;->closed:Z

    if-nez v0, :cond_0

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl;->closed:Z

    .line 234
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/io/OutputStream;

    iget-object v3, p0, Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl;->out:Ljava/io/OutputStream;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl;->err:Ljava/io/OutputStream;

    aput-object v3, v2, v0

    invoke-static {v2}, Lorg/jline/builtins/ssh/ShellFactoryImpl;->access$100([Ljava/io/OutputStream;)V

    .line 235
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/io/Closeable;

    iget-object v3, p0, Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl;->in:Ljava/io/InputStream;

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl;->out:Ljava/io/OutputStream;

    aput-object v3, v2, v0

    iget-object v0, p0, Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl;->err:Ljava/io/OutputStream;

    aput-object v0, v2, v1

    invoke-static {v2}, Lorg/jline/builtins/ssh/ShellFactoryImpl;->close([Ljava/io/Closeable;)V

    .line 236
    iget-object v0, p0, Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl;->callback:Lorg/apache/sshd/server/ExitCallback;

    invoke-interface {v0, v4}, Lorg/apache/sshd/server/ExitCallback;->onExit(I)V

    .line 238
    :cond_0
    return-void
.end method

.method synthetic lambda$start$0$org-jline-builtins-ssh-ShellFactoryImpl$ShellImpl(Lorg/apache/sshd/server/Environment;)V
    .locals 1
    .param p1, "env"    # Lorg/apache/sshd/server/Environment;

    .line 107
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl;->run(Lorg/apache/sshd/server/Environment;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    .line 109
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 111
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public run(Lorg/apache/sshd/server/Environment;)V
    .locals 8
    .param p1, "env"    # Lorg/apache/sshd/server/Environment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 119
    :try_start_0
    invoke-static {}, Lorg/jline/terminal/TerminalBuilder;->builder()Lorg/jline/terminal/TerminalBuilder;

    move-result-object v0

    const-string v1, "JLine SSH"

    .line 120
    invoke-virtual {v0, v1}, Lorg/jline/terminal/TerminalBuilder;->name(Ljava/lang/String;)Lorg/jline/terminal/TerminalBuilder;

    move-result-object v0

    .line 121
    invoke-interface {p1}, Lorg/apache/sshd/server/Environment;->getEnv()Ljava/util/Map;

    move-result-object v1

    const-string v2, "TERM"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jline/terminal/TerminalBuilder;->type(Ljava/lang/String;)Lorg/jline/terminal/TerminalBuilder;

    move-result-object v0

    .line 122
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jline/terminal/TerminalBuilder;->system(Z)Lorg/jline/terminal/TerminalBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl;->out:Ljava/io/OutputStream;

    .line 123
    invoke-virtual {v0, v2, v3}, Lorg/jline/terminal/TerminalBuilder;->streams(Ljava/io/InputStream;Ljava/io/OutputStream;)Lorg/jline/terminal/TerminalBuilder;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lorg/jline/terminal/TerminalBuilder;->build()Lorg/jline/terminal/Terminal;

    move-result-object v0

    .line 125
    .local v0, "terminal":Lorg/jline/terminal/Terminal;
    new-instance v2, Lorg/jline/terminal/Size;

    invoke-interface {p1}, Lorg/apache/sshd/server/Environment;->getEnv()Ljava/util/Map;

    move-result-object v3

    const-string v4, "COLUMNS"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 126
    invoke-interface {p1}, Lorg/apache/sshd/server/Environment;->getEnv()Ljava/util/Map;

    move-result-object v4

    const-string v5, "LINES"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/jline/terminal/Size;-><init>(II)V

    .line 125
    invoke-interface {v0, v2}, Lorg/jline/terminal/Terminal;->setSize(Lorg/jline/terminal/Size;)V

    .line 127
    invoke-interface {v0}, Lorg/jline/terminal/Terminal;->getAttributes()Lorg/jline/terminal/Attributes;

    move-result-object v2

    .line 128
    .local v2, "attr":Lorg/jline/terminal/Attributes;
    invoke-interface {p1}, Lorg/apache/sshd/server/Environment;->getPtyModes()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 129
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/sshd/common/channel/PtyMode;Ljava/lang/Integer;>;"
    sget-object v6, Lorg/jline/builtins/ssh/ShellFactoryImpl$1;->$SwitchMap$org$apache$sshd$common$channel$PtyMode:[I

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/sshd/common/channel/PtyMode;

    invoke-virtual {v7}, Lorg/apache/sshd/common/channel/PtyMode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_b

    .line 214
    :pswitch_0
    sget-object v6, Lorg/jline/terminal/Attributes$OutputFlag;->OPOST:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    invoke-virtual {v2, v6, v5}, Lorg/jline/terminal/Attributes;->setOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;Z)V

    goto/16 :goto_b

    .line 211
    :pswitch_1
    sget-object v6, Lorg/jline/terminal/Attributes$OutputFlag;->ONLRET:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    move v5, v1

    :goto_2
    invoke-virtual {v2, v6, v5}, Lorg/jline/terminal/Attributes;->setOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;Z)V

    .line 212
    goto/16 :goto_b

    .line 208
    :pswitch_2
    sget-object v6, Lorg/jline/terminal/Attributes$OutputFlag;->ONLCR:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_3

    :cond_2
    move v5, v1

    :goto_3
    invoke-virtual {v2, v6, v5}, Lorg/jline/terminal/Attributes;->setOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;Z)V

    .line 209
    goto/16 :goto_b

    .line 205
    :pswitch_3
    sget-object v6, Lorg/jline/terminal/Attributes$OutputFlag;->OCRNL:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_4

    :cond_3
    move v5, v1

    :goto_4
    invoke-virtual {v2, v6, v5}, Lorg/jline/terminal/Attributes;->setOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;Z)V

    .line 206
    goto/16 :goto_b

    .line 202
    :pswitch_4
    sget-object v6, Lorg/jline/terminal/Attributes$InputFlag;->IGNCR:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_5

    :cond_4
    move v5, v1

    :goto_5
    invoke-virtual {v2, v6, v5}, Lorg/jline/terminal/Attributes;->setInputFlag(Lorg/jline/terminal/Attributes$InputFlag;Z)V

    .line 203
    goto/16 :goto_b

    .line 199
    :pswitch_5
    sget-object v6, Lorg/jline/terminal/Attributes$InputFlag;->INLCR:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_6

    :cond_5
    move v5, v1

    :goto_6
    invoke-virtual {v2, v6, v5}, Lorg/jline/terminal/Attributes;->setInputFlag(Lorg/jline/terminal/Attributes$InputFlag;Z)V

    .line 200
    goto/16 :goto_b

    .line 196
    :pswitch_6
    sget-object v6, Lorg/jline/terminal/Attributes$InputFlag;->ICRNL:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_7

    :cond_6
    move v5, v1

    :goto_7
    invoke-virtual {v2, v6, v5}, Lorg/jline/terminal/Attributes;->setInputFlag(Lorg/jline/terminal/Attributes$InputFlag;Z)V

    .line 197
    goto/16 :goto_b

    .line 193
    :pswitch_7
    sget-object v6, Lorg/jline/terminal/Attributes$LocalFlag;->ISIG:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_8

    :cond_7
    move v5, v1

    :goto_8
    invoke-virtual {v2, v6, v5}, Lorg/jline/terminal/Attributes;->setLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;Z)V

    .line 194
    goto/16 :goto_b

    .line 190
    :pswitch_8
    sget-object v6, Lorg/jline/terminal/Attributes$LocalFlag;->ICANON:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_9

    :cond_8
    move v5, v1

    :goto_9
    invoke-virtual {v2, v6, v5}, Lorg/jline/terminal/Attributes;->setLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;Z)V

    .line 191
    goto/16 :goto_b

    .line 187
    :pswitch_9
    sget-object v6, Lorg/jline/terminal/Attributes$LocalFlag;->ECHO:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_a

    :cond_9
    move v5, v1

    :goto_a
    invoke-virtual {v2, v6, v5}, Lorg/jline/terminal/Attributes;->setLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;Z)V

    .line 188
    goto/16 :goto_b

    .line 184
    :pswitch_a
    sget-object v5, Lorg/jline/terminal/Attributes$ControlChar;->VDISCARD:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/jline/terminal/Attributes;->setControlChar(Lorg/jline/terminal/Attributes$ControlChar;I)V

    .line 185
    goto/16 :goto_b

    .line 181
    :pswitch_b
    sget-object v5, Lorg/jline/terminal/Attributes$ControlChar;->VSTATUS:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/jline/terminal/Attributes;->setControlChar(Lorg/jline/terminal/Attributes$ControlChar;I)V

    .line 182
    goto/16 :goto_b

    .line 170
    :pswitch_c
    sget-object v5, Lorg/jline/terminal/Attributes$ControlChar;->VLNEXT:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/jline/terminal/Attributes;->setControlChar(Lorg/jline/terminal/Attributes$ControlChar;I)V

    .line 171
    goto/16 :goto_b

    .line 167
    :pswitch_d
    sget-object v5, Lorg/jline/terminal/Attributes$ControlChar;->VWERASE:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/jline/terminal/Attributes;->setControlChar(Lorg/jline/terminal/Attributes$ControlChar;I)V

    .line 168
    goto/16 :goto_b

    .line 164
    :pswitch_e
    sget-object v5, Lorg/jline/terminal/Attributes$ControlChar;->VREPRINT:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/jline/terminal/Attributes;->setControlChar(Lorg/jline/terminal/Attributes$ControlChar;I)V

    .line 165
    goto/16 :goto_b

    .line 161
    :pswitch_f
    sget-object v5, Lorg/jline/terminal/Attributes$ControlChar;->VDSUSP:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/jline/terminal/Attributes;->setControlChar(Lorg/jline/terminal/Attributes$ControlChar;I)V

    .line 162
    goto/16 :goto_b

    .line 158
    :pswitch_10
    sget-object v5, Lorg/jline/terminal/Attributes$ControlChar;->VSUSP:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/jline/terminal/Attributes;->setControlChar(Lorg/jline/terminal/Attributes$ControlChar;I)V

    .line 159
    goto/16 :goto_b

    .line 155
    :pswitch_11
    sget-object v5, Lorg/jline/terminal/Attributes$ControlChar;->VSTOP:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/jline/terminal/Attributes;->setControlChar(Lorg/jline/terminal/Attributes$ControlChar;I)V

    .line 156
    goto/16 :goto_b

    .line 152
    :pswitch_12
    sget-object v5, Lorg/jline/terminal/Attributes$ControlChar;->VSTART:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/jline/terminal/Attributes;->setControlChar(Lorg/jline/terminal/Attributes$ControlChar;I)V

    .line 153
    goto :goto_b

    .line 149
    :pswitch_13
    sget-object v5, Lorg/jline/terminal/Attributes$ControlChar;->VEOL2:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/jline/terminal/Attributes;->setControlChar(Lorg/jline/terminal/Attributes$ControlChar;I)V

    .line 150
    goto :goto_b

    .line 146
    :pswitch_14
    sget-object v5, Lorg/jline/terminal/Attributes$ControlChar;->VEOL:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/jline/terminal/Attributes;->setControlChar(Lorg/jline/terminal/Attributes$ControlChar;I)V

    .line 147
    goto :goto_b

    .line 143
    :pswitch_15
    sget-object v5, Lorg/jline/terminal/Attributes$ControlChar;->VEOF:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/jline/terminal/Attributes;->setControlChar(Lorg/jline/terminal/Attributes$ControlChar;I)V

    .line 144
    goto :goto_b

    .line 140
    :pswitch_16
    sget-object v5, Lorg/jline/terminal/Attributes$ControlChar;->VKILL:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/jline/terminal/Attributes;->setControlChar(Lorg/jline/terminal/Attributes$ControlChar;I)V

    .line 141
    goto :goto_b

    .line 137
    :pswitch_17
    sget-object v5, Lorg/jline/terminal/Attributes$ControlChar;->VERASE:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/jline/terminal/Attributes;->setControlChar(Lorg/jline/terminal/Attributes$ControlChar;I)V

    .line 138
    goto :goto_b

    .line 134
    :pswitch_18
    sget-object v5, Lorg/jline/terminal/Attributes$ControlChar;->VQUIT:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/jline/terminal/Attributes;->setControlChar(Lorg/jline/terminal/Attributes$ControlChar;I)V

    .line 135
    goto :goto_b

    .line 131
    :pswitch_19
    sget-object v5, Lorg/jline/terminal/Attributes$ControlChar;->VINTR:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/jline/terminal/Attributes;->setControlChar(Lorg/jline/terminal/Attributes$ControlChar;I)V

    .line 132
    nop

    .line 217
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/sshd/common/channel/PtyMode;Ljava/lang/Integer;>;"
    :goto_b
    goto/16 :goto_0

    .line 218
    :cond_a
    invoke-interface {v0, v2}, Lorg/jline/terminal/Terminal;->setAttributes(Lorg/jline/terminal/Attributes;)V

    .line 219
    new-instance v3, Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, p1}, Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl$$ExternalSyntheticLambda0;-><init>(Lorg/jline/terminal/Terminal;Lorg/apache/sshd/server/Environment;)V

    new-array v4, v5, [Lorg/apache/sshd/server/Signal;

    sget-object v5, Lorg/apache/sshd/server/Signal;->WINCH:Lorg/apache/sshd/server/Signal;

    aput-object v5, v4, v1

    invoke-interface {p1, v3, v4}, Lorg/apache/sshd/server/Environment;->addSignalListener(Lorg/apache/sshd/server/SignalListener;[Lorg/apache/sshd/server/Signal;)V

    .line 225
    iget-object v1, p0, Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl;->this$0:Lorg/jline/builtins/ssh/ShellFactoryImpl;

    invoke-static {v1}, Lorg/jline/builtins/ssh/ShellFactoryImpl;->access$000(Lorg/jline/builtins/ssh/ShellFactoryImpl;)Ljava/util/function/Consumer;

    move-result-object v1

    new-instance v3, Lorg/jline/builtins/ssh/Ssh$ShellParams;

    invoke-interface {p1}, Lorg/apache/sshd/server/Environment;->getEnv()Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl;->session:Lorg/apache/sshd/server/session/ServerSession;

    new-instance v6, Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl$$ExternalSyntheticLambda1;-><init>(Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl;)V

    invoke-direct {v3, v4, v5, v0, v6}, Lorg/jline/builtins/ssh/Ssh$ShellParams;-><init>(Ljava/util/Map;Lorg/apache/sshd/server/session/ServerSession;Lorg/jline/terminal/Terminal;Ljava/lang/Runnable;)V

    invoke-interface {v1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    .end local v0    # "terminal":Lorg/jline/terminal/Terminal;
    .end local v2    # "attr":Lorg/jline/terminal/Attributes;
    goto :goto_c

    .line 226
    :catchall_0
    move-exception v0

    .line 227
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 229
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setErrorStream(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "err"    # Ljava/io/OutputStream;

    .line 92
    iput-object p1, p0, Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl;->err:Ljava/io/OutputStream;

    .line 93
    return-void
.end method

.method public setExitCallback(Lorg/apache/sshd/server/ExitCallback;)V
    .locals 0
    .param p1, "callback"    # Lorg/apache/sshd/server/ExitCallback;

    .line 96
    iput-object p1, p0, Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl;->callback:Lorg/apache/sshd/server/ExitCallback;

    .line 97
    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .line 84
    iput-object p1, p0, Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl;->in:Ljava/io/InputStream;

    .line 85
    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 88
    iput-object p1, p0, Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl;->out:Ljava/io/OutputStream;

    .line 89
    return-void
.end method

.method public setSession(Lorg/apache/sshd/server/session/ServerSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/sshd/server/session/ServerSession;

    .line 100
    iput-object p1, p0, Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl;->session:Lorg/apache/sshd/server/session/ServerSession;

    .line 101
    return-void
.end method

.method public start(Lorg/apache/sshd/server/Environment;)V
    .locals 3
    .param p1, "env"    # Lorg/apache/sshd/server/Environment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl$$ExternalSyntheticLambda2;-><init>(Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl;Lorg/apache/sshd/server/Environment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 111
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    nop

    .line 115
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to start shell"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
