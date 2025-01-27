.class public Lch/qos/logback/classic/helpers/MDCInsertingServletFilter;
.super Ljava/lang/Object;
.source "MDCInsertingServletFilter.java"

# interfaces
.implements Ljavax/servlet/Filter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method clearMDC()V
    .locals 1

    .line 75
    const-string/jumbo v0, "req.remoteHost"

    invoke-static {v0}, Lorg/slf4j/MDC;->remove(Ljava/lang/String;)V

    .line 76
    const-string/jumbo v0, "req.requestURI"

    invoke-static {v0}, Lorg/slf4j/MDC;->remove(Ljava/lang/String;)V

    .line 77
    const-string/jumbo v0, "req.queryString"

    invoke-static {v0}, Lorg/slf4j/MDC;->remove(Ljava/lang/String;)V

    .line 79
    const-string/jumbo v0, "req.requestURL"

    invoke-static {v0}, Lorg/slf4j/MDC;->remove(Ljava/lang/String;)V

    .line 80
    const-string/jumbo v0, "req.method"

    invoke-static {v0}, Lorg/slf4j/MDC;->remove(Ljava/lang/String;)V

    .line 81
    const-string/jumbo v0, "req.userAgent"

    invoke-static {v0}, Lorg/slf4j/MDC;->remove(Ljava/lang/String;)V

    .line 82
    const-string/jumbo v0, "req.xForwardedFor"

    invoke-static {v0}, Lorg/slf4j/MDC;->remove(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public destroy()V
    .locals 0

    .line 43
    return-void
.end method

.method public doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V
    .locals 1
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .param p3, "chain"    # Ljavax/servlet/FilterChain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lch/qos/logback/classic/helpers/MDCInsertingServletFilter;->insertIntoMDC(Ljavax/servlet/ServletRequest;)V

    .line 49
    :try_start_0
    invoke-interface {p3, p1, p2}, Ljavax/servlet/FilterChain;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-virtual {p0}, Lch/qos/logback/classic/helpers/MDCInsertingServletFilter;->clearMDC()V

    .line 52
    nop

    .line 53
    return-void

    .line 51
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lch/qos/logback/classic/helpers/MDCInsertingServletFilter;->clearMDC()V

    throw v0
.end method

.method public init(Ljavax/servlet/FilterConfig;)V
    .locals 0
    .param p1, "arg0"    # Ljavax/servlet/FilterConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 87
    return-void
.end method

.method insertIntoMDC(Ljavax/servlet/ServletRequest;)V
    .locals 4
    .param p1, "request"    # Ljavax/servlet/ServletRequest;

    .line 57
    invoke-interface {p1}, Ljavax/servlet/ServletRequest;->getRemoteHost()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "req.remoteHost"

    invoke-static {v1, v0}, Lorg/slf4j/MDC;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    instance-of v0, p1, Ljavax/servlet/http/HttpServletRequest;

    if-eqz v0, :cond_1

    .line 60
    move-object v0, p1

    check-cast v0, Ljavax/servlet/http/HttpServletRequest;

    .line 61
    .local v0, "httpServletRequest":Ljavax/servlet/http/HttpServletRequest;
    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "req.requestURI"

    invoke-static {v2, v1}, Lorg/slf4j/MDC;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getRequestURL()Ljava/lang/StringBuffer;

    move-result-object v1

    .line 63
    .local v1, "requestURL":Ljava/lang/StringBuffer;
    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "req.requestURL"

    invoke-static {v3, v2}, Lorg/slf4j/MDC;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_0
    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "req.method"

    invoke-static {v3, v2}, Lorg/slf4j/MDC;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "req.queryString"

    invoke-static {v3, v2}, Lorg/slf4j/MDC;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v2, "User-Agent"

    invoke-interface {v0, v2}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "req.userAgent"

    invoke-static {v3, v2}, Lorg/slf4j/MDC;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v2, "X-Forwarded-For"

    invoke-interface {v0, v2}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "req.xForwardedFor"

    invoke-static {v3, v2}, Lorg/slf4j/MDC;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .end local v0    # "httpServletRequest":Ljavax/servlet/http/HttpServletRequest;
    .end local v1    # "requestURL":Ljava/lang/StringBuffer;
    :cond_1
    return-void
.end method
