.class public Lorg/jpos/q2/cli/WHOAMI;
.super Ljava/lang/Object;
.source "WHOAMI.java"

# interfaces
.implements Lorg/jpos/q2/CLICommand;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)V
    .locals 1
    .param p1, "cli"    # Lorg/jpos/q2/CLIContext;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    const-string v0, "user.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 28
    return-void
.end method
