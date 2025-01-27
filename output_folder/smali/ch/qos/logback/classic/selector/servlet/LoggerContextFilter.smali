.class public Lch/qos/logback/classic/selector/servlet/LoggerContextFilter;
.super Ljava/lang/Object;
.source "LoggerContextFilter.java"

# interfaces
.implements Ljavax/servlet/Filter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 55
    return-void
.end method

.method public doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V
    .locals 4
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .param p3, "chain"    # Ljavax/servlet/FilterChain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 59
    invoke-static {}, Lorg/slf4j/LoggerFactory;->getILoggerFactory()Lorg/slf4j/ILoggerFactory;

    move-result-object v0

    check-cast v0, Lch/qos/logback/classic/LoggerContext;

    .line 60
    .local v0, "lc":Lch/qos/logback/classic/LoggerContext;
    invoke-static {}, Lch/qos/logback/classic/util/ContextSelectorStaticBinder;->getSingleton()Lch/qos/logback/classic/util/ContextSelectorStaticBinder;

    move-result-object v1

    invoke-virtual {v1}, Lch/qos/logback/classic/util/ContextSelectorStaticBinder;->getContextSelector()Lch/qos/logback/classic/selector/ContextSelector;

    move-result-object v1

    .line 61
    .local v1, "selector":Lch/qos/logback/classic/selector/ContextSelector;
    const/4 v2, 0x0

    .line 63
    .local v2, "sel":Lch/qos/logback/classic/selector/ContextJNDISelector;
    instance-of v3, v1, Lch/qos/logback/classic/selector/ContextJNDISelector;

    if-eqz v3, :cond_0

    .line 64
    move-object v2, v1

    check-cast v2, Lch/qos/logback/classic/selector/ContextJNDISelector;

    .line 65
    invoke-virtual {v2, v0}, Lch/qos/logback/classic/selector/ContextJNDISelector;->setLocalContext(Lch/qos/logback/classic/LoggerContext;)V

    .line 69
    :cond_0
    :try_start_0
    invoke-interface {p3, p1, p2}, Ljavax/servlet/FilterChain;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    if-eqz v2, :cond_1

    .line 72
    invoke-virtual {v2}, Lch/qos/logback/classic/selector/ContextJNDISelector;->removeLocalContext()V

    .line 75
    :cond_1
    return-void

    .line 71
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    .line 72
    invoke-virtual {v2}, Lch/qos/logback/classic/selector/ContextJNDISelector;->removeLocalContext()V

    :cond_2
    throw v3
.end method

.method public init(Ljavax/servlet/FilterConfig;)V
    .locals 0
    .param p1, "arg0"    # Ljavax/servlet/FilterConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 79
    return-void
.end method
