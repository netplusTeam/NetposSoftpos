.class Lorg/jline/style/StyleBundleInvocationHandler$StyleBundleMethodMissingDefaultStyleException;
.super Ljava/lang/RuntimeException;
.source "StyleBundleInvocationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/style/StyleBundleInvocationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StyleBundleMethodMissingDefaultStyleException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .line 196
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lorg/jline/style/StyleBundle;

    .line 197
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lorg/jline/style/StyleBundle$DefaultStyle;

    .line 198
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 196
    const-string v1, "%s method missing @%s: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 201
    return-void
.end method
