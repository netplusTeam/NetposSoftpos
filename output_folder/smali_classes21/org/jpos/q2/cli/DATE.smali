.class public Lorg/jpos/q2/cli/DATE;
.super Ljava/lang/Object;
.source "DATE.java"

# interfaces
.implements Lorg/jpos/q2/CLICommand;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)V
    .locals 1
    .param p1, "ctx"    # Lorg/jpos/q2/CLIContext;
    .param p2, "args"    # [Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 30
    return-void
.end method
