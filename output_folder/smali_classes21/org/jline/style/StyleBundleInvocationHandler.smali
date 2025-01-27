.class Lorg/jline/style/StyleBundleInvocationHandler;
.super Ljava/lang/Object;
.source "StyleBundleInvocationHandler.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/style/StyleBundleInvocationHandler$InvalidStyleGroupException;,
        Lorg/jline/style/StyleBundleInvocationHandler$InvalidStyleBundleMethodException;,
        Lorg/jline/style/StyleBundleInvocationHandler$StyleBundleMethodMissingDefaultStyleException;
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final resolver:Lorg/jline/style/StyleResolver;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lorg/jline/style/StyleBundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lorg/jline/style/StyleBundleInvocationHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jline/style/StyleBundleInvocationHandler;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lorg/jline/style/StyleResolver;)V
    .locals 1
    .param p2, "resolver"    # Lorg/jline/style/StyleResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/jline/style/StyleBundle;",
            ">;",
            "Lorg/jline/style/StyleResolver;",
            ")V"
        }
    .end annotation

    .line 40
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/jline/style/StyleBundle;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lorg/jline/style/StyleBundleInvocationHandler;->type:Ljava/lang/Class;

    .line 42
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/style/StyleResolver;

    iput-object v0, p0, Lorg/jline/style/StyleBundleInvocationHandler;->resolver:Lorg/jline/style/StyleResolver;

    .line 43
    return-void
.end method

.method static create(Lorg/jline/style/StyleResolver;Ljava/lang/Class;)Lorg/jline/style/StyleBundle;
    .locals 5
    .param p0, "resolver"    # Lorg/jline/style/StyleResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/jline/style/StyleBundle;",
            ">(",
            "Lorg/jline/style/StyleResolver;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 106
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lorg/jline/style/StyleBundleInvocationHandler;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 110
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/jline/style/StyleResolver;->getGroup()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v4, "Using style-group: %s for type: %s"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 113
    :cond_0
    new-instance v0, Lorg/jline/style/StyleBundleInvocationHandler;

    invoke-direct {v0, p1, p0}, Lorg/jline/style/StyleBundleInvocationHandler;-><init>(Ljava/lang/Class;Lorg/jline/style/StyleResolver;)V

    .line 114
    .local v0, "handler":Lorg/jline/style/StyleBundleInvocationHandler;
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Class;

    aput-object p1, v3, v2

    invoke-static {v1, v3, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/style/StyleBundle;

    return-object v1
.end method

.method static create(Lorg/jline/style/StyleSource;Ljava/lang/Class;)Lorg/jline/style/StyleBundle;
    .locals 2
    .param p0, "source"    # Lorg/jline/style/StyleSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/jline/style/StyleBundle;",
            ">(",
            "Lorg/jline/style/StyleSource;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 123
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-static {p1}, Lorg/jline/style/StyleBundleInvocationHandler;->getStyleGroup(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "group":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 130
    new-instance v1, Lorg/jline/style/StyleResolver;

    invoke-direct {v1, p0, v0}, Lorg/jline/style/StyleResolver;-><init>(Lorg/jline/style/StyleSource;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lorg/jline/style/StyleBundleInvocationHandler;->create(Lorg/jline/style/StyleResolver;Ljava/lang/Class;)Lorg/jline/style/StyleBundle;

    move-result-object v1

    return-object v1

    .line 127
    :cond_0
    new-instance v1, Lorg/jline/style/StyleBundleInvocationHandler$InvalidStyleGroupException;

    invoke-direct {v1, p1}, Lorg/jline/style/StyleBundleInvocationHandler$InvalidStyleGroupException;-><init>(Ljava/lang/Class;)V

    throw v1
.end method

.method private static emptyToNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 62
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    return-object p0

    .line 63
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getDefaultStyle(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 2
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 94
    const-class v0, Lorg/jline/style/StyleBundle$DefaultStyle;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/jline/style/StyleBundle$DefaultStyle;

    .line 96
    .local v0, "defaultStyle":Lorg/jline/style/StyleBundle$DefaultStyle;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/jline/style/StyleBundle$DefaultStyle;->value()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jline/style/StyleBundleInvocationHandler;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private static getStyleGroup(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 73
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lorg/jline/style/StyleBundle$StyleGroup;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/jline/style/StyleBundle$StyleGroup;

    .line 74
    .local v0, "styleGroup":Lorg/jline/style/StyleBundle$StyleGroup;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/jline/style/StyleBundle$StyleGroup;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jline/style/StyleBundleInvocationHandler;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private static getStyleName(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 2
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 85
    const-class v0, Lorg/jline/style/StyleBundle$StyleName;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/jline/style/StyleBundle$StyleName;

    .line 86
    .local v0, "styleName":Lorg/jline/style/StyleBundle$StyleName;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/jline/style/StyleBundle$StyleName;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jline/style/StyleBundleInvocationHandler;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private static validate(Ljava/lang/reflect/Method;)V
    .locals 2
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 50
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 55
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/jline/utils/AttributedString;

    if-ne v0, v1, :cond_0

    .line 58
    return-void

    .line 56
    :cond_0
    new-instance v0, Lorg/jline/style/StyleBundleInvocationHandler$InvalidStyleBundleMethodException;

    const-string v1, "Invalid return-type"

    invoke-direct {v0, p0, v1}, Lorg/jline/style/StyleBundleInvocationHandler$InvalidStyleBundleMethodException;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    new-instance v0, Lorg/jline/style/StyleBundleInvocationHandler$InvalidStyleBundleMethodException;

    const-string v1, "Invalid parameters"

    invoke-direct {v0, p0, v1}, Lorg/jline/style/StyleBundleInvocationHandler$InvalidStyleBundleMethodException;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 140
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 141
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 145
    :cond_0
    invoke-static {p2}, Lorg/jline/style/StyleBundleInvocationHandler;->validate(Ljava/lang/reflect/Method;)V

    .line 148
    invoke-static {p2}, Lorg/jline/style/StyleBundleInvocationHandler;->getStyleName(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "styleName":Ljava/lang/String;
    iget-object v1, p0, Lorg/jline/style/StyleBundleInvocationHandler;->resolver:Lorg/jline/style/StyleResolver;

    invoke-virtual {v1}, Lorg/jline/style/StyleResolver;->getSource()Lorg/jline/style/StyleSource;

    move-result-object v1

    iget-object v2, p0, Lorg/jline/style/StyleBundleInvocationHandler;->resolver:Lorg/jline/style/StyleResolver;

    invoke-virtual {v2}, Lorg/jline/style/StyleResolver;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/jline/style/StyleSource;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "style":Ljava/lang/String;
    sget-object v2, Lorg/jline/style/StyleBundleInvocationHandler;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    .line 153
    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v6

    aput-object v1, v3, v4

    const-string v7, "Sourced-style: %s -> %s"

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 156
    :cond_1
    if-nez v1, :cond_3

    .line 157
    invoke-static {p2}, Lorg/jline/style/StyleBundleInvocationHandler;->getDefaultStyle(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v1

    .line 160
    if-eqz v1, :cond_2

    goto :goto_0

    .line 161
    :cond_2
    new-instance v2, Lorg/jline/style/StyleBundleInvocationHandler$StyleBundleMethodMissingDefaultStyleException;

    invoke-direct {v2, p2}, Lorg/jline/style/StyleBundleInvocationHandler$StyleBundleMethodMissingDefaultStyleException;-><init>(Ljava/lang/reflect/Method;)V

    throw v2

    .line 165
    :cond_3
    :goto_0
    aget-object v3, p3, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "value":Ljava/lang/String;
    sget-object v7, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v2, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 167
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v6

    aput-object v1, v7, v4

    aput-object v3, v7, v5

    const-string v4, "Applying style: %s -> %s to: %s"

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 170
    :cond_4
    iget-object v2, p0, Lorg/jline/style/StyleBundleInvocationHandler;->resolver:Lorg/jline/style/StyleResolver;

    invoke-virtual {v2, v1}, Lorg/jline/style/StyleResolver;->resolve(Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v2

    .line 171
    .local v2, "astyle":Lorg/jline/utils/AttributedStyle;
    new-instance v4, Lorg/jline/utils/AttributedString;

    invoke-direct {v4, v3, v2}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;Lorg/jline/utils/AttributedStyle;)V

    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lorg/jline/style/StyleBundleInvocationHandler;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
