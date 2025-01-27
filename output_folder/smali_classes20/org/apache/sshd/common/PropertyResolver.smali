.class public interface abstract Lorg/apache/sshd/common/PropertyResolver;
.super Ljava/lang/Object;
.source "PropertyResolver.java"


# static fields
.field public static final EMPTY:Lorg/apache/sshd/common/PropertyResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lorg/apache/sshd/common/PropertyResolver$1;

    invoke-direct {v0}, Lorg/apache/sshd/common/PropertyResolver$1;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/PropertyResolver;->EMPTY:Lorg/apache/sshd/common/PropertyResolver;

    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 111
    invoke-static {p0, p1}, Lorg/apache/sshd/common/PropertyResolverUtils;->getBoolean(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getBooleanProperty(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .line 107
    invoke-static {p0, p1, p2}, Lorg/apache/sshd/common/PropertyResolverUtils;->getBooleanProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getCharset(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/nio/charset/Charset;

    .line 127
    invoke-interface {p0, p1}, Lorg/apache/sshd/common/PropertyResolver;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 128
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/apache/sshd/common/PropertyResolverUtils;->toCharset(Ljava/lang/Object;)Ljava/nio/charset/Charset;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getIntProperty(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .line 99
    invoke-static {p0, p1, p2}, Lorg/apache/sshd/common/PropertyResolverUtils;->getIntProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 103
    invoke-static {p0, p1}, Lorg/apache/sshd/common/PropertyResolverUtils;->getInteger(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 95
    invoke-static {p0, p1}, Lorg/apache/sshd/common/PropertyResolverUtils;->getLong(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getLongProperty(Ljava/lang/String;J)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J

    .line 91
    invoke-static {p0, p1, p2, p3}, Lorg/apache/sshd/common/PropertyResolverUtils;->getLongProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 123
    invoke-static {p0, p1}, Lorg/apache/sshd/common/PropertyResolverUtils;->getObject(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract getParentPropertyResolver()Lorg/apache/sshd/common/PropertyResolver;
.end method

.method public abstract getProperties()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 119
    invoke-static {p0, p1}, Lorg/apache/sshd/common/PropertyResolverUtils;->getString(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .line 115
    invoke-static {p0, p1, p2}, Lorg/apache/sshd/common/PropertyResolverUtils;->getStringProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
