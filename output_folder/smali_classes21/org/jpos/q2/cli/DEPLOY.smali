.class public Lorg/jpos/q2/cli/DEPLOY;
.super Ljava/lang/Object;
.source "DEPLOY.java"

# interfaces
.implements Lorg/jpos/q2/CLISubSystem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCompletionPrefixes(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "ctx"    # Lorg/jpos/q2/CLIContext;
    .param p2, "args"    # [Ljava/lang/String;

    .line 37
    const-string v0, "org.jpos.q2.cli.deploy."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrompt(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "ctx"    # Lorg/jpos/q2/CLIContext;
    .param p2, "args"    # [Ljava/lang/String;

    .line 32
    const-string v0, "deploy> "

    return-object v0
.end method
