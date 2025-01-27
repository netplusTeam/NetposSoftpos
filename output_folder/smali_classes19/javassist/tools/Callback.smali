.class public abstract Ljavassist/tools/Callback;
.super Ljava/lang/Object;
.source "Callback.java"


# static fields
.field public static callbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavassist/tools/Callback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final sourceCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljavassist/tools/Callback;->callbacks:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "src"    # Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "uuid":Ljava/lang/String;
    sget-object v1, Ljavassist/tools/Callback;->callbacks:Ljava/util/Map;

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "((javassist.tools.Callback) javassist.tools.Callback.callbacks.get(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\")).result(new Object[]{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "});"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavassist/tools/Callback;->sourceCode:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public static insertAfter(Ljavassist/CtBehavior;Ljavassist/tools/Callback;)V
    .locals 2
    .param p0, "behavior"    # Ljavassist/CtBehavior;
    .param p1, "callback"    # Ljavassist/tools/Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 112
    invoke-virtual {p1}, Ljavassist/tools/Callback;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljavassist/CtBehavior;->insertAfter(Ljava/lang/String;Z)V

    .line 113
    return-void
.end method

.method public static insertAfter(Ljavassist/CtBehavior;Ljavassist/tools/Callback;Z)V
    .locals 1
    .param p0, "behavior"    # Ljavassist/CtBehavior;
    .param p1, "callback"    # Ljavassist/tools/Callback;
    .param p2, "asFinally"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 133
    invoke-virtual {p1}, Ljavassist/tools/Callback;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljavassist/CtBehavior;->insertAfter(Ljava/lang/String;Z)V

    .line 134
    return-void
.end method

.method public static insertAt(Ljavassist/CtBehavior;Ljavassist/tools/Callback;I)I
    .locals 1
    .param p0, "behavior"    # Ljavassist/CtBehavior;
    .param p1, "callback"    # Ljavassist/tools/Callback;
    .param p2, "lineNum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 152
    invoke-virtual {p1}, Ljavassist/tools/Callback;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Ljavassist/CtBehavior;->insertAt(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static insertBefore(Ljavassist/CtBehavior;Ljavassist/tools/Callback;)V
    .locals 1
    .param p0, "behavior"    # Ljavassist/CtBehavior;
    .param p1, "callback"    # Ljavassist/tools/Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 96
    invoke-virtual {p1}, Ljavassist/tools/Callback;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavassist/CtBehavior;->insertBefore(Ljava/lang/String;)V

    .line 97
    return-void
.end method


# virtual methods
.method public abstract result([Ljava/lang/Object;)V
.end method

.method public sourceCode()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Ljavassist/tools/Callback;->sourceCode:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 79
    invoke-virtual {p0}, Ljavassist/tools/Callback;->sourceCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
