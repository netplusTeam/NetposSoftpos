.class public Lorg/jline/console/CommandRegistry$CommandSession;
.super Ljava/lang/Object;
.source "CommandRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/console/CommandRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommandSession"
.end annotation


# instance fields
.field private final err:Ljava/io/PrintStream;

.field private final in:Ljava/io/InputStream;

.field private final out:Ljava/io/PrintStream;

.field private final terminal:Lorg/jline/terminal/Terminal;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    sget-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    iput-object v0, p0, Lorg/jline/console/CommandRegistry$CommandSession;->in:Ljava/io/InputStream;

    .line 118
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/jline/console/CommandRegistry$CommandSession;->out:Ljava/io/PrintStream;

    .line 119
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/jline/console/CommandRegistry$CommandSession;->err:Ljava/io/PrintStream;

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jline/console/CommandRegistry$CommandSession;->terminal:Lorg/jline/terminal/Terminal;

    .line 121
    return-void
.end method

.method public constructor <init>(Lorg/jline/terminal/Terminal;)V
    .locals 4
    .param p1, "terminal"    # Lorg/jline/terminal/Terminal;

    .line 124
    invoke-interface {p1}, Lorg/jline/terminal/Terminal;->input()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/PrintStream;

    invoke-interface {p1}, Lorg/jline/terminal/Terminal;->output()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v2, Ljava/io/PrintStream;

    invoke-interface {p1}, Lorg/jline/terminal/Terminal;->output()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/jline/console/CommandRegistry$CommandSession;-><init>(Lorg/jline/terminal/Terminal;Ljava/io/InputStream;Ljava/io/PrintStream;Ljava/io/PrintStream;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Lorg/jline/terminal/Terminal;Ljava/io/InputStream;Ljava/io/PrintStream;Ljava/io/PrintStream;)V
    .locals 0
    .param p1, "terminal"    # Lorg/jline/terminal/Terminal;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "out"    # Ljava/io/PrintStream;
    .param p4, "err"    # Ljava/io/PrintStream;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lorg/jline/console/CommandRegistry$CommandSession;->terminal:Lorg/jline/terminal/Terminal;

    .line 129
    iput-object p2, p0, Lorg/jline/console/CommandRegistry$CommandSession;->in:Ljava/io/InputStream;

    .line 130
    iput-object p3, p0, Lorg/jline/console/CommandRegistry$CommandSession;->out:Ljava/io/PrintStream;

    .line 131
    iput-object p4, p0, Lorg/jline/console/CommandRegistry$CommandSession;->err:Ljava/io/PrintStream;

    .line 132
    return-void
.end method


# virtual methods
.method public err()Ljava/io/PrintStream;
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/jline/console/CommandRegistry$CommandSession;->err:Ljava/io/PrintStream;

    return-object v0
.end method

.method public in()Ljava/io/InputStream;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/jline/console/CommandRegistry$CommandSession;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public out()Ljava/io/PrintStream;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/jline/console/CommandRegistry$CommandSession;->out:Ljava/io/PrintStream;

    return-object v0
.end method

.method public terminal()Lorg/jline/terminal/Terminal;
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/jline/console/CommandRegistry$CommandSession;->terminal:Lorg/jline/terminal/Terminal;

    return-object v0
.end method
