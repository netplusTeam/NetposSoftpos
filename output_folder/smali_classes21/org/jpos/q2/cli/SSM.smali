.class public Lorg/jpos/q2/cli/SSM;
.super Ljava/lang/Object;
.source "SSM.java"

# interfaces
.implements Lorg/jpos/q2/CLISubSystem;
.implements Lorg/jpos/q2/CLICommand;


# static fields
.field private static final JCE_KEY:Ljava/lang/String; = "jce-sm"

.field private static final SYSTEM_KEY:Ljava/lang/String; = "SSM"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSecurityModule(Lorg/jpos/q2/CLIContext;)Lorg/jpos/security/jceadapter/JCESecurityModule;
    .locals 2
    .param p0, "cliContext"    # Lorg/jpos/q2/CLIContext;

    .line 55
    invoke-static {p0}, Lorg/jpos/q2/cli/SSM;->getSystemStorage(Lorg/jpos/q2/CLIContext;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "jce-sm"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/security/jceadapter/JCESecurityModule;

    return-object v0
.end method

.method private static getSystemStorage(Lorg/jpos/q2/CLIContext;)Ljava/util/Map;
    .locals 2
    .param p0, "cliContext"    # Lorg/jpos/q2/CLIContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/q2/CLIContext;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lorg/jpos/q2/CLIContext;->getUserData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "SSM"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public static setSecurityModule(Lorg/jpos/q2/CLIContext;Lorg/jpos/security/jceadapter/JCESecurityModule;)V
    .locals 2
    .param p0, "cliContext"    # Lorg/jpos/q2/CLIContext;
    .param p1, "securityModule"    # Lorg/jpos/security/jceadapter/JCESecurityModule;

    .line 59
    invoke-static {p0}, Lorg/jpos/q2/cli/SSM;->getSystemStorage(Lorg/jpos/q2/CLIContext;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "jce-sm"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method


# virtual methods
.method public exec(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)V
    .locals 3
    .param p1, "cli"    # Lorg/jpos/q2/CLIContext;
    .param p2, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    const-string v0, "SSM"

    invoke-virtual {p1, v0}, Lorg/jpos/q2/CLIContext;->setActiveSubSystem(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Lorg/jpos/q2/CLIContext;->getUserData()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public getCompletionPrefixes(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "ctx"    # Lorg/jpos/q2/CLIContext;
    .param p2, "args"    # [Ljava/lang/String;

    .line 45
    const-string v0, "org.jpos.q2.cli.ssm.actions."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrompt(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "ctx"    # Lorg/jpos/q2/CLIContext;
    .param p2, "args"    # [Ljava/lang/String;

    .line 40
    const-string v0, "ssm> "

    return-object v0
.end method
