.class public Lorg/jpos/q2/cli/EXIT;
.super Ljava/lang/Object;
.source "EXIT.java"

# interfaces
.implements Lorg/jpos/q2/CLICommand;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)V
    .locals 1
    .param p1, "ctx"    # Lorg/jpos/q2/CLIContext;
    .param p2, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/jpos/q2/CLIContext;->setStopped(Z)V

    .line 27
    return-void
.end method
