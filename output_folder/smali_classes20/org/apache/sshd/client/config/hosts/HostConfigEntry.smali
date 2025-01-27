.class public Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
.super Lorg/apache/sshd/client/config/hosts/HostPatternsHolder;
.source "HostConfigEntry.java"

# interfaces
.implements Lorg/apache/sshd/common/auth/MutableUserHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/client/config/hosts/HostConfigEntry$LazyDefaultConfigFileHolder;
    }
.end annotation


# static fields
.field public static final DEFAULT_EXCLUSIVE_IDENTITIES:Z = false

.field public static final EXCLUSIVE_IDENTITIES_CONFIG_PROP:Ljava/lang/String; = "IdentitiesOnly"

.field public static final EXPLICIT_PROPERTIES:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final HOME_TILDE_CHAR:C = '~'

.field public static final HOST_CONFIG_PROP:Ljava/lang/String; = "Host"

.field public static final HOST_NAME_CONFIG_PROP:Ljava/lang/String; = "HostName"

.field public static final IDENTITY_FILE_CONFIG_PROP:Ljava/lang/String; = "IdentityFile"

.field public static final LOCAL_HOME_MACRO:C = 'd'

.field public static final LOCAL_HOST_MACRO:C = 'l'

.field public static final LOCAL_USER_MACRO:C = 'u'

.field public static final MULTI_VALUE_SEPARATORS:Ljava/lang/String; = " ,"

.field public static final PATH_MACRO_CHAR:C = '%'

.field public static final PORT_CONFIG_PROP:Ljava/lang/String; = "Port"

.field public static final REMOTE_HOST_MACRO:C = 'h'

.field public static final REMOTE_PORT_MACRO:C = 'p'

.field public static final REMOTE_USER_MACRO:C = 'r'

.field public static final STD_CONFIG_FILENAME:Ljava/lang/String; = "config"

.field public static final USER_CONFIG_PROP:Ljava/lang/String; = "User"


# instance fields
.field private exclusiveIdentites:Ljava/lang/Boolean;

.field private host:Ljava/lang/String;

.field private hostName:Ljava/lang/String;

.field private identities:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private port:I

.field private properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 89
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    const-string v1, "Host"

    const-string v2, "HostName"

    const-string v3, "Port"

    const-string v4, "User"

    const-string v5, "IdentityFile"

    const-string v6, "IdentitiesOnly"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/GenericUtils;->asSortedSet(Ljava/util/Comparator;[Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v0

    .line 90
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->EXPLICIT_PROPERTIES:Ljava/util/NavigableSet;

    .line 89
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 126
    invoke-direct {p0}, Lorg/apache/sshd/client/config/hosts/HostPatternsHolder;-><init>()V

    .line 122
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->identities:Ljava/util/Collection;

    .line 123
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->properties:Ljava/util/Map;

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "username"    # Ljava/lang/String;

    .line 129
    invoke-direct {p0}, Lorg/apache/sshd/client/config/hosts/HostPatternsHolder;-><init>()V

    .line 122
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->identities:Ljava/util/Collection;

    .line 123
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->properties:Ljava/util/Map;

    .line 130
    invoke-virtual {p0, p1}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->setHost(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0, p2}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->setHostName(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0, p3}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->setPort(I)V

    .line 133
    invoke-virtual {p0, p4}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->setUsername(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public static appendHostConfigEntries(Ljava/lang/Appendable;Ljava/util/Collection;)Ljava/lang/Appendable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/client/config/hosts/HostConfigEntry;",
            ">;)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1025
    .local p0, "sb":Ljava/lang/Appendable;, "TA;"
    .local p1, "entries":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/client/config/hosts/HostConfigEntry;>;"
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1026
    return-object p0

    .line 1029
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;

    .line 1030
    .local v1, "entry":Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
    invoke-virtual {v1, p0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->append(Ljava/lang/Appendable;)Ljava/lang/Appendable;

    .line 1031
    .end local v1    # "entry":Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
    goto :goto_0

    .line 1033
    :cond_1
    return-object p0
.end method

.method public static appendNonEmptyPort(Ljava/lang/Appendable;Ljava/lang/String;I)Ljava/lang/Appendable;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;",
            "Ljava/lang/String;",
            "I)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 583
    .local p0, "sb":Ljava/lang/Appendable;, "TA;"
    if-lez p2, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, p1, v0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->appendNonEmptyProperty(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public static appendNonEmptyProperties(Ljava/lang/Appendable;Ljava/util/Map;)Ljava/lang/Appendable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 597
    .local p0, "sb":Ljava/lang/Appendable;, "TA;"
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    return-object p0

    .line 602
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 603
    .local v1, "pe":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 604
    .local v2, "name":Ljava/lang/String;
    sget-object v3, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->EXPLICIT_PROPERTIES:Ljava/util/NavigableSet;

    invoke-interface {v3, v2}, Ljava/util/NavigableSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 605
    goto :goto_0

    .line 608
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->appendNonEmptyProperty(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Appendable;

    .line 609
    .end local v1    # "pe":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v2    # "name":Ljava/lang/String;
    goto :goto_0

    .line 611
    :cond_2
    return-object p0
.end method

.method public static appendNonEmptyProperty(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Appendable;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 627
    .local p0, "sb":Ljava/lang/Appendable;, "TA;"
    const/4 v0, 0x0

    invoke-static {p2, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 628
    .local v0, "s":Ljava/lang/String;
    const/16 v1, 0x2c

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/GenericUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v1

    .line 629
    .local v1, "vals":[Ljava/lang/String;
    move-object v2, v1

    check-cast v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v2}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->appendNonEmptyValues(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Appendable;

    move-result-object v2

    return-object v2
.end method

.method public static appendNonEmptyValues(Ljava/lang/Appendable;Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/Appendable;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "*>;)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 654
    .local p0, "sb":Ljava/lang/Appendable;, "TA;"
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const-string v0, "No property name"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, "k":Ljava/lang/String;
    invoke-static {p2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 656
    return-object p0

    .line 659
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 660
    .local v2, "v":Ljava/lang/Object;
    const-string v3, "    "

    invoke-interface {p0, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v3

    const/16 v4, 0x20

    invoke-interface {v3, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v3

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v3

    sget-object v4, Lorg/apache/sshd/common/util/io/IoUtils;->EOL:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 661
    .end local v2    # "v":Ljava/lang/Object;
    goto :goto_0

    .line 663
    :cond_1
    return-object p0
.end method

.method public static varargs appendNonEmptyValues(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Appendable;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 642
    .local p0, "sb":Ljava/lang/Appendable;, "TA;"
    invoke-static {p2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-static {p0, p1, v0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->appendNonEmptyValues(Ljava/lang/Appendable;Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public static appendUserHome(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;

    .line 1129
    invoke-static {}, Lorg/apache/sshd/common/config/keys/IdentityUtils;->getUserHomeFolder()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->appendUserHome(Ljava/lang/StringBuilder;Ljava/nio/file/Path;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static appendUserHome(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "userHome"    # Ljava/lang/String;

    .line 1137
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1138
    return-object p0

    .line 1141
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1144
    .local v0, "len":I
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    if-ne v1, v2, :cond_1

    .line 1145
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1148
    :cond_1
    return-object p0
.end method

.method public static appendUserHome(Ljava/lang/StringBuilder;Ljava/nio/file/Path;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "userHome"    # Ljava/nio/file/Path;

    .line 1133
    const-string v0, "No user home folder"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->appendUserHome(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static findBestMatch(Ljava/lang/Iterable;)Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/sshd/client/config/hosts/HostConfigEntry;",
            ">;)",
            "Lorg/apache/sshd/client/config/hosts/HostConfigEntry;"
        }
    .end annotation

    .line 928
    .local p0, "matches":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/sshd/client/config/hosts/HostConfigEntry;>;"
    if-nez p0, :cond_0

    .line 929
    const/4 v0, 0x0

    return-object v0

    .line 931
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->findBestMatch(Ljava/util/Iterator;)Lorg/apache/sshd/client/config/hosts/HostConfigEntry;

    move-result-object v0

    return-object v0
.end method

.method public static findBestMatch(Ljava/util/Collection;)Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/client/config/hosts/HostConfigEntry;",
            ">;)",
            "Lorg/apache/sshd/client/config/hosts/HostConfigEntry;"
        }
    .end annotation

    .line 913
    .local p0, "matches":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/client/config/hosts/HostConfigEntry;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 914
    const/4 v0, 0x0

    return-object v0

    .line 916
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->findBestMatch(Ljava/util/Iterator;)Lorg/apache/sshd/client/config/hosts/HostConfigEntry;

    move-result-object v0

    return-object v0
.end method

.method public static findBestMatch(Ljava/util/Iterator;)Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Lorg/apache/sshd/client/config/hosts/HostConfigEntry;",
            ">;)",
            "Lorg/apache/sshd/client/config/hosts/HostConfigEntry;"
        }
    .end annotation

    .line 946
    .local p0, "matches":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/apache/sshd/client/config/hosts/HostConfigEntry;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 950
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;

    .line 951
    .local v1, "candidate":Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
    const/4 v2, 0x0

    .line 952
    .local v2, "wildcardMatches":I
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 953
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;

    .line 954
    .local v3, "entry":Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
    invoke-virtual {v3}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 955
    .local v4, "entryPattern":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 957
    .local v5, "candidatePattern":Ljava/lang/String;
    sget-object v6, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->ALL_HOSTS_PATTERN:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 959
    sget-object v6, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->ALL_HOSTS_PATTERN:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 960
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 962
    :cond_1
    move-object v1, v3

    .line 963
    const/4 v2, 0x0

    .line 965
    goto :goto_0

    .line 968
    :cond_2
    invoke-static {v4}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->isSpecificHostPattern(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 970
    invoke-static {v5}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->isSpecificHostPattern(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 971
    return-object v0

    .line 974
    :cond_3
    move-object v1, v3

    .line 975
    const/4 v2, 0x0

    .line 976
    goto :goto_0

    .line 979
    :cond_4
    nop

    .end local v3    # "entry":Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
    .end local v4    # "entryPattern":Ljava/lang/String;
    .end local v5    # "candidatePattern":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 980
    goto :goto_0

    .line 982
    :cond_5
    invoke-virtual {v1}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 984
    .local v3, "candidatePattern":Ljava/lang/String;
    if-lez v2, :cond_7

    invoke-static {v3}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->isSpecificHostPattern(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_1

    .line 988
    :cond_6
    return-object v0

    .line 985
    :cond_7
    :goto_1
    return-object v1

    .line 947
    .end local v1    # "candidate":Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
    .end local v2    # "wildcardMatches":I
    .end local v3    # "candidatePattern":Ljava/lang/String;
    :cond_8
    :goto_2
    return-object v0
.end method

.method public static getDefaultHostConfigFile()Ljava/nio/file/Path;
    .locals 1

    .line 1156
    invoke-static {}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry$LazyDefaultConfigFileHolder;->access$000()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$toHostConfigEntryResolver$0(Ljava/util/Collection;Ljava/lang/String;ILjava/net/SocketAddress;Ljava/lang/String;Lorg/apache/sshd/common/AttributeRepository;)Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
    .locals 6
    .param p0, "entries"    # Ljava/util/Collection;
    .param p1, "host1"    # Ljava/lang/String;
    .param p2, "port1"    # I
    .param p3, "lclAddress"    # Ljava/net/SocketAddress;
    .param p4, "username1"    # Ljava/lang/String;
    .param p5, "ctx"    # Lorg/apache/sshd/common/AttributeRepository;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 675
    invoke-static {p1, p0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->findMatchingEntries(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 676
    .local v0, "matches":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/client/config/hosts/HostConfigEntry;>;"
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v1

    .line 677
    .local v1, "numMatches":I
    if-gtz v1, :cond_0

    .line 678
    const/4 v2, 0x0

    return-object v2

    .line 681
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->findBestMatch(Ljava/util/Collection;)Lorg/apache/sshd/client/config/hosts/HostConfigEntry;

    move-result-object v4

    .line 682
    .local v4, "match":Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
    :goto_0
    if-nez v4, :cond_2

    .line 683
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p4, v5, v2

    aput-object p1, v5, v3

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    const-string v2, "No best match found for %s@%s:%d out of %d matches"

    invoke-static {v2, v5}, Lorg/apache/sshd/common/util/ValidateUtils;->throwIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 686
    :cond_2
    invoke-static {v4, p1, p2, p4}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->normalizeEntry(Lorg/apache/sshd/client/config/hosts/HostConfigEntry;Ljava/lang/String;ILjava/lang/String;)Lorg/apache/sshd/client/config/hosts/HostConfigEntry;

    move-result-object v2

    return-object v2
.end method

.method public static normalizeEntry(Lorg/apache/sshd/client/config/hosts/HostConfigEntry;Ljava/lang/String;ILjava/lang/String;)Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
    .locals 6
    .param p0, "entry"    # Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 707
    if-nez p0, :cond_0

    .line 708
    const/4 v0, 0x0

    return-object v0

    .line 711
    :cond_0
    new-instance v0, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;

    invoke-direct {v0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;-><init>()V

    .line 712
    .local v0, "normal":Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
    invoke-virtual {v0, p1}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->setHost(Ljava/lang/String;)V

    .line 713
    invoke-virtual {p0, p1}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->resolveHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->setHostName(Ljava/lang/String;)V

    .line 714
    invoke-virtual {p0, p2}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->resolvePort(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->setPort(I)V

    .line 715
    invoke-virtual {p0, p3}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->resolveUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->setUsername(Ljava/lang/String;)V

    .line 717
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->getProperties()Ljava/util/Map;

    move-result-object v1

    .line 718
    .local v1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Map;)I

    move-result v2

    if-lez v2, :cond_1

    .line 719
    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 720
    invoke-static {v2}, Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;->builder(Ljava/util/Comparator;)Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;

    move-result-object v2

    .line 721
    invoke-virtual {v2, v1}, Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;->putAll(Ljava/util/Map;)Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;

    move-result-object v2

    .line 722
    invoke-virtual {v2}, Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;->build()Ljava/util/NavigableMap;

    move-result-object v2

    .line 719
    invoke-virtual {v0, v2}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->setProperties(Ljava/util/Map;)V

    .line 725
    :cond_1
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->getIdentities()Ljava/util/Collection;

    move-result-object v2

    .line 726
    .local v2, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 727
    return-object v0

    .line 730
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->setIdentities(Ljava/util/Collection;)V

    .line 731
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 732
    .local v4, "id":Ljava/lang/String;
    invoke-static {v4, p1, p2, p3}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->resolveIdentityFilePath(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 733
    .local v5, "path":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->addIdentity(Ljava/lang/String;)V

    .line 734
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "path":Ljava/lang/String;
    goto :goto_0

    .line 736
    :cond_3
    return-object v0
.end method

.method public static parseConfigValue(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1043
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->replaceWhitespaceAndTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1044
    .local v0, "s":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1045
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1048
    :cond_0
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    const-string v2, " ,"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 1049
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1050
    .local v2, "sep":C
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 1051
    .local v3, "pos":I
    if-ltz v3, :cond_2

    .line 1052
    invoke-static {v0, v2}, Lorg/apache/sshd/common/util/GenericUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v4

    .line 1053
    .local v4, "vals":[Ljava/lang/String;
    invoke-static {v4}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1054
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    return-object v5

    .line 1056
    :cond_1
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    return-object v5

    .line 1048
    .end local v2    # "sep":C
    .end local v3    # "pos":I
    .end local v4    # "vals":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1062
    .end local v1    # "index":I
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static readHostConfigEntries(Ljava/io/BufferedReader;)Ljava/util/List;
    .locals 14
    .param p0, "rdr"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/sshd/client/config/hosts/HostConfigEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 819
    const/4 v0, 0x0

    .line 820
    .local v0, "curEntry":Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
    const/4 v1, 0x0

    .line 821
    .local v1, "globalEntry":Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
    const/4 v2, 0x0

    .line 823
    .local v2, "entries":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/client/config/hosts/HostConfigEntry;>;"
    const/4 v3, 0x1

    .line 824
    .local v3, "lineNumber":I
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_c

    .line 825
    invoke-static {v4}, Lorg/apache/sshd/common/util/GenericUtils;->replaceWhitespaceAndTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 826
    invoke-static {v4}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 827
    goto/16 :goto_4

    .line 830
    :cond_0
    const/16 v5, 0x23

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 831
    .local v5, "pos":I
    if-nez v5, :cond_1

    .line 832
    goto/16 :goto_4

    .line 835
    :cond_1
    const/4 v6, 0x0

    if-lez v5, :cond_2

    .line 836
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 837
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 844
    :cond_2
    const/16 v7, 0x20

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 845
    if-gez v5, :cond_3

    .line 846
    const/16 v7, 0x3d

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 849
    :cond_3
    const-string v7, ": "

    if-ltz v5, :cond_b

    .line 853
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 854
    .local v8, "key":Ljava/lang/String;
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 855
    .local v9, "value":Ljava/lang/String;
    invoke-static {v9}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->parseConfigValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 857
    .local v10, "valsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v11, "Host"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 858
    invoke-static {v10}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 863
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 864
    .local v12, "name":Ljava/lang/String;
    sget-object v13, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->ALL_HOSTS_PATTERN:Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    if-nez v1, :cond_4

    goto :goto_2

    .line 865
    :cond_4
    new-instance v6, Ljava/io/StreamCorruptedException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Overriding the global section with a specific one at line "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 867
    .end local v12    # "name":Ljava/lang/String;
    :cond_5
    :goto_2
    goto :goto_1

    .line 869
    :cond_6
    if-eqz v0, :cond_7

    .line 870
    invoke-virtual {v0, v1}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->processGlobalValues(Lorg/apache/sshd/client/config/hosts/HostConfigEntry;)Z

    .line 873
    :cond_7
    invoke-static {v2, v0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->updateEntriesList(Ljava/util/List;Lorg/apache/sshd/client/config/hosts/HostConfigEntry;)Ljava/util/List;

    move-result-object v2

    .line 875
    new-instance v7, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;

    invoke-direct {v7}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;-><init>()V

    move-object v0, v7

    .line 876
    invoke-virtual {v0, v10}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->setHost(Ljava/util/Collection;)V

    goto :goto_3

    .line 859
    :cond_8
    new-instance v6, Ljava/io/StreamCorruptedException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Missing host pattern(s) at line "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 877
    :cond_9
    if-nez v0, :cond_a

    .line 879
    new-instance v7, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;

    invoke-direct {v7}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;-><init>()V

    move-object v0, v7

    .line 880
    sget-object v7, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->ALL_HOSTS_PATTERN:Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->setHost(Ljava/util/Collection;)V

    .line 881
    move-object v1, v0

    .line 885
    :cond_a
    :goto_3
    :try_start_0
    invoke-virtual {v0, v8, v10, v6}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->processProperty(Ljava/lang/String;Ljava/util/Collection;Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    nop

    .line 824
    .end local v5    # "pos":I
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    .end local v10    # "valsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_4
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 886
    .restart local v5    # "pos":I
    .restart local v8    # "key":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/String;
    .restart local v10    # "valsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v6

    .line 887
    .local v6, "e":Ljava/lang/RuntimeException;
    new-instance v7, Ljava/io/StreamCorruptedException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") to process line #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 889
    invoke-virtual {v6}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 850
    .end local v6    # "e":Ljava/lang/RuntimeException;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    .end local v10    # "valsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_b
    new-instance v6, Ljava/io/StreamCorruptedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No configuration value delimiter at line "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 893
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "pos":I
    :cond_c
    if-eqz v0, :cond_d

    .line 894
    invoke-virtual {v0, v1}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->processGlobalValues(Lorg/apache/sshd/client/config/hosts/HostConfigEntry;)Z

    .line 897
    :cond_d
    invoke-static {v2, v0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->updateEntriesList(Ljava/util/List;Lorg/apache/sshd/client/config/hosts/HostConfigEntry;)Ljava/util/List;

    move-result-object v2

    .line 898
    if-nez v2, :cond_e

    .line 899
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 901
    :cond_e
    return-object v2
.end method

.method public static readHostConfigEntries(Ljava/io/InputStream;Z)Ljava/util/List;
    .locals 4
    .param p0, "inStream"    # Ljava/io/InputStream;
    .param p1, "okToClose"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Z)",
            "Ljava/util/List<",
            "Lorg/apache/sshd/client/config/hosts/HostConfigEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 800
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-static {p0, p1}, Lorg/apache/sshd/common/util/io/NoCloseInputStream;->resolveInputStream(Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 801
    .local v0, "reader":Ljava/io/Reader;
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, v1}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->readHostConfigEntries(Ljava/io/Reader;Z)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 802
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 801
    return-object v1

    .line 800
    :catchall_0
    move-exception v1

    .end local v0    # "reader":Ljava/io/Reader;
    .end local p0    # "inStream":Ljava/io/InputStream;
    .end local p1    # "okToClose":Z
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 802
    .restart local v0    # "reader":Ljava/io/Reader;
    .restart local p0    # "inStream":Ljava/io/InputStream;
    .restart local p1    # "okToClose":Z
    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
.end method

.method public static readHostConfigEntries(Ljava/io/Reader;Z)Ljava/util/List;
    .locals 4
    .param p0, "rdr"    # Ljava/io/Reader;
    .param p1, "okToClose"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Z)",
            "Ljava/util/List<",
            "Lorg/apache/sshd/client/config/hosts/HostConfigEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 806
    new-instance v0, Ljava/io/BufferedReader;

    invoke-static {p0, p1}, Lorg/apache/sshd/common/util/io/NoCloseReader;->resolveReader(Ljava/io/Reader;Z)Ljava/io/Reader;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 807
    .local v0, "buf":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {v0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->readHostConfigEntries(Ljava/io/BufferedReader;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 808
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 807
    return-object v1

    .line 806
    :catchall_0
    move-exception v1

    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local p0    # "rdr":Ljava/io/Reader;
    .end local p1    # "okToClose":Z
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 808
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    .restart local p0    # "rdr":Ljava/io/Reader;
    .restart local p1    # "okToClose":Z
    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
.end method

.method public static readHostConfigEntries(Ljava/net/URL;)Ljava/util/List;
    .locals 4
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/sshd/client/config/hosts/HostConfigEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 794
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 795
    .local v0, "input":Ljava/io/InputStream;
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, v1}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->readHostConfigEntries(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 796
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 795
    :cond_0
    return-object v1

    .line 794
    :catchall_0
    move-exception v1

    .end local v0    # "input":Ljava/io/InputStream;
    .end local p0    # "url":Ljava/net/URL;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 796
    .restart local v0    # "input":Ljava/io/InputStream;
    .restart local p0    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method public static varargs readHostConfigEntries(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/util/List;
    .locals 4
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/OpenOption;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/sshd/client/config/hosts/HostConfigEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 788
    invoke-static {p0, p1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    .line 789
    .local v0, "input":Ljava/io/InputStream;
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, v1}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->readHostConfigEntries(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 790
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 789
    :cond_0
    return-object v1

    .line 788
    :catchall_0
    move-exception v1

    .end local v0    # "input":Ljava/io/InputStream;
    .end local p0    # "path":Ljava/nio/file/Path;
    .end local p1    # "options":[Ljava/nio/file/OpenOption;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 790
    .restart local v0    # "input":Ljava/io/InputStream;
    .restart local p0    # "path":Ljava/nio/file/Path;
    .restart local p1    # "options":[Ljava/nio/file/OpenOption;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method public static resolveHostName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "originalName"    # Ljava/lang/String;
    .param p1, "entryName"    # Ljava/lang/String;

    .line 748
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    return-object p0

    .line 751
    :cond_0
    return-object p1
.end method

.method public static resolveIdentityFilePath(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1068
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1069
    return-object p0

    .line 1072
    :cond_0
    const/16 v0, 0x2f

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 1073
    .local v0, "path":Ljava/lang/String;
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/GenericUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v1

    .line 1074
    .local v1, "elements":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1075
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_9

    .line 1076
    aget-object v4, v1, v3

    .line 1077
    .local v4, "elem":Ljava/lang/String;
    if-lez v3, :cond_1

    .line 1078
    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1081
    :cond_1
    const/4 v5, 0x0

    .local v5, "curPos":I
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 1082
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1083
    .local v6, "ch":C
    const/16 v7, 0x7e

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v6, v7, :cond_3

    .line 1084
    if-nez v5, :cond_2

    if-nez v3, :cond_2

    move v8, v9

    :cond_2
    const-string v7, "Home tilde must be first: %s"

    invoke-static {v8, v7, p0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 1085
    invoke-static {v2}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->appendUserHome(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1086
    :cond_3
    const/16 v7, 0x25

    if-ne v6, v7, :cond_7

    .line 1087
    add-int/lit8 v5, v5, 0x1

    .line 1088
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_4

    move v7, v9

    goto :goto_2

    :cond_4
    move v7, v8

    :goto_2
    const-string v10, "Missing macro modifier in %s"

    invoke-static {v7, v10, p0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 1089
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1090
    sparse-switch v6, :sswitch_data_0

    .line 1117
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    aput-object p0, v7, v9

    const-string v8, "Bad modifier \'%s\' in %s"

    invoke-static {v8, v7}, Lorg/apache/sshd/common/util/ValidateUtils;->throwIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 1099
    :sswitch_0
    invoke-static {}, Lorg/apache/sshd/common/util/OsUtils;->getCurrentUser()Ljava/lang/String;

    move-result-object v7

    const-string v8, "No local user name value"

    invoke-static {v7, v8}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1100
    goto :goto_3

    .line 1110
    :sswitch_1
    const-string v7, "No remote user provided"

    invoke-static {p3, v7}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    goto :goto_3

    .line 1113
    :sswitch_2
    if-lez p2, :cond_5

    move v8, v9

    :cond_5
    int-to-long v10, p2

    const-string v7, "Bad remote port value: %d"

    invoke-static {v8, v7, v10, v11}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 1114
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1115
    goto :goto_3

    .line 1102
    :sswitch_3
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v7

    const-string v8, "No local address"

    invoke-static {v7, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    .line 1103
    .local v7, "address":Ljava/net/InetAddress;
    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "No local name"

    invoke-static {v8, v10}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    goto :goto_3

    .line 1107
    .end local v7    # "address":Ljava/net/InetAddress;
    :sswitch_4
    const-string v7, "No remote host provided"

    invoke-static {p1, v7}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    goto :goto_3

    .line 1095
    :sswitch_5
    if-ne v5, v9, :cond_6

    if-nez v3, :cond_6

    move v8, v9

    :cond_6
    const-string v7, "Home macro must be first: %s"

    invoke-static {v8, v7, p0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 1096
    invoke-static {v2}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->appendUserHome(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1097
    goto :goto_3

    .line 1092
    :sswitch_6
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1093
    goto :goto_3

    .line 1120
    :cond_7
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1081
    .end local v6    # "ch":C
    :goto_3
    add-int/2addr v5, v9

    goto/16 :goto_1

    .line 1075
    .end local v4    # "elem":Ljava/lang/String;
    .end local v5    # "curPos":I
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1125
    .end local v3    # "index":I
    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_6
        0x64 -> :sswitch_5
        0x68 -> :sswitch_4
        0x6c -> :sswitch_3
        0x70 -> :sswitch_2
        0x72 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method public static resolvePort(II)I
    .locals 0
    .param p0, "originalPort"    # I
    .param p1, "entryPort"    # I

    .line 780
    if-gtz p1, :cond_0

    .line 781
    return p0

    .line 783
    :cond_0
    return p1
.end method

.method public static resolveUsername(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "originalUser"    # Ljava/lang/String;
    .param p1, "entryUser"    # Ljava/lang/String;

    .line 764
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    return-object p0

    .line 767
    :cond_0
    return-object p1
.end method

.method public static toHostConfigEntryResolver(Ljava/util/Collection;)Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/client/config/hosts/HostConfigEntry;",
            ">;)",
            "Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;"
        }
    .end annotation

    .line 671
    .local p0, "entries":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/client/config/hosts/HostConfigEntry;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    sget-object v0, Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;->EMPTY:Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;

    return-object v0

    .line 674
    :cond_0
    new-instance v0, Lorg/apache/sshd/client/config/hosts/HostConfigEntry$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry$$ExternalSyntheticLambda0;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static updateEntriesList(Ljava/util/List;Lorg/apache/sshd/client/config/hosts/HostConfigEntry;)Ljava/util/List;
    .locals 1
    .param p1, "curEntry"    # Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/sshd/client/config/hosts/HostConfigEntry;",
            ">;",
            "Lorg/apache/sshd/client/config/hosts/HostConfigEntry;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/sshd/client/config/hosts/HostConfigEntry;",
            ">;"
        }
    .end annotation

    .line 992
    .local p0, "entries":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/client/config/hosts/HostConfigEntry;>;"
    if-nez p1, :cond_0

    .line 993
    return-object p0

    .line 996
    :cond_0
    if-nez p0, :cond_1

    .line 997
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p0, v0

    .line 1000
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1001
    return-object p0
.end method

.method public static writeHostConfigEntries(Ljava/io/OutputStream;ZLjava/util/Collection;)V
    .locals 4
    .param p0, "outputStream"    # Ljava/io/OutputStream;
    .param p1, "okToClose"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Z",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/client/config/hosts/HostConfigEntry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1015
    .local p2, "entries":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/client/config/hosts/HostConfigEntry;>;"
    invoke-static {p2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1016
    return-void

    .line 1019
    :cond_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-static {p0, p1}, Lorg/apache/sshd/common/util/io/NoCloseOutputStream;->resolveOutputStream(Ljava/io/OutputStream;Z)Ljava/io/OutputStream;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 1020
    .local v0, "w":Ljava/io/Writer;
    :try_start_0
    invoke-static {v0, p2}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->appendHostConfigEntries(Ljava/lang/Appendable;Ljava/util/Collection;)Ljava/lang/Appendable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1021
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 1022
    .end local v0    # "w":Ljava/io/Writer;
    return-void

    .line 1019
    .restart local v0    # "w":Ljava/io/Writer;
    :catchall_0
    move-exception v1

    .end local v0    # "w":Ljava/io/Writer;
    .end local p0    # "outputStream":Ljava/io/OutputStream;
    .end local p1    # "okToClose":Z
    .end local p2    # "entries":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/client/config/hosts/HostConfigEntry;>;"
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1021
    .restart local v0    # "w":Ljava/io/Writer;
    .restart local p0    # "outputStream":Ljava/io/OutputStream;
    .restart local p1    # "okToClose":Z
    .restart local p2    # "entries":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/client/config/hosts/HostConfigEntry;>;"
    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
.end method

.method public static varargs writeHostConfigEntries(Ljava/nio/file/Path;Ljava/util/Collection;[Ljava/nio/file/OpenOption;)V
    .locals 4
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p2, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/client/config/hosts/HostConfigEntry;",
            ">;[",
            "Ljava/nio/file/OpenOption;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1007
    .local p1, "entries":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/client/config/hosts/HostConfigEntry;>;"
    invoke-static {p0, p2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    .line 1008
    .local v0, "outputStream":Ljava/io/OutputStream;
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, v1, p1}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->writeHostConfigEntries(Ljava/io/OutputStream;ZLjava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1009
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1010
    .end local v0    # "outputStream":Ljava/io/OutputStream;
    :cond_0
    return-void

    .line 1007
    .restart local v0    # "outputStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v1

    .end local v0    # "outputStream":Ljava/io/OutputStream;
    .end local p0    # "path":Ljava/nio/file/Path;
    .end local p1    # "entries":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/client/config/hosts/HostConfigEntry;>;"
    .end local p2    # "options":[Ljava/nio/file/OpenOption;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1009
    .restart local v0    # "outputStream":Ljava/io/OutputStream;
    .restart local p0    # "path":Ljava/nio/file/Path;
    .restart local p1    # "entries":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/client/config/hosts/HostConfigEntry;>;"
    .restart local p2    # "options":[Ljava/nio/file/OpenOption;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method


# virtual methods
.method public addIdentity(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .line 237
    const-string v0, "No identity provided"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->identities:Ljava/util/Collection;

    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->identities:Ljava/util/Collection;

    .line 241
    :cond_0
    iget-object v1, p0, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->identities:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 242
    return-void
.end method

.method public addIdentity(Ljava/nio/file/Path;)V
    .locals 1
    .param p1, "path"    # Ljava/nio/file/Path;

    .line 228
    const-string v0, "No path"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->addIdentity(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public append(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 556
    .local p1, "sb":Ljava/lang/Appendable;, "TA;"
    const-string v0, "Host"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No host pattern"

    invoke-static {v1, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    sget-object v1, Lorg/apache/sshd/common/util/io/IoUtils;->EOL:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 557
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->getHostName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HostName"

    invoke-static {p1, v1, v0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->appendNonEmptyProperty(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Appendable;

    .line 558
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->getPort()I

    move-result v0

    const-string v1, "Port"

    invoke-static {p1, v1, v0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->appendNonEmptyPort(Ljava/lang/Appendable;Ljava/lang/String;I)Ljava/lang/Appendable;

    .line 559
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->getUsername()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User"

    invoke-static {p1, v1, v0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->appendNonEmptyProperty(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Appendable;

    .line 560
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->getIdentities()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "IdentityFile"

    invoke-static {p1, v1, v0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->appendNonEmptyValues(Ljava/lang/Appendable;Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/Appendable;

    .line 561
    iget-object v0, p0, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->exclusiveIdentites:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/apache/sshd/common/config/ConfigFileReaderSupport;->yesNoValueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "IdentitiesOnly"

    invoke-static {p1, v1, v0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->appendNonEmptyProperty(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Appendable;

    .line 564
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->getProperties()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->appendNonEmptyProperties(Ljava/lang/Appendable;Ljava/util/Map;)Ljava/lang/Appendable;

    .line 565
    return-object p1
.end method

.method public appendPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 498
    const-string v0, "No property name"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 500
    .local v1, "curVal":Ljava/lang/String;
    invoke-static {p2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 501
    return-object v1

    .line 504
    :cond_0
    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 505
    invoke-virtual {p0, v0, p2}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 508
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentities()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->identities:Ljava/util/Collection;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 172
    iget v0, p0, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->port:I

    return v0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->properties:Ljava/util/Map;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 275
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 284
    const-string v0, "No property name"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->getProperties()Ljava/util/Map;

    move-result-object v1

    .line 286
    .local v1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    return-object p2

    .line 290
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 291
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 292
    return-object p2

    .line 294
    :cond_1
    return-object v2
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->username:Ljava/lang/String;

    return-object v0
.end method

.method public isIdentitiesOnly()Z
    .locals 1

    .line 252
    iget-object v0, p0, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->exclusiveIdentites:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public processGlobalValues(Lorg/apache/sshd/client/config/hosts/HostConfigEntry;)Z
    .locals 5
    .param p1, "globalEntry"    # Lorg/apache/sshd/client/config/hosts/HostConfigEntry;

    .line 307
    const/4 v0, 0x0

    if-eqz p1, :cond_d

    if-ne p0, p1, :cond_0

    goto/16 :goto_a

    .line 311
    :cond_0
    const/4 v1, 0x0

    .line 316
    .local v1, "modified":Z
    invoke-virtual {p1}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->getPort()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->updateGlobalPort(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    move v1, v2

    .line 317
    invoke-virtual {p1}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->updateGlobalHostName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v0

    goto :goto_3

    :cond_4
    :goto_2
    move v2, v3

    :goto_3
    move v1, v2

    .line 318
    invoke-virtual {p1}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->updateGlobalUserName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    move v2, v0

    goto :goto_5

    :cond_6
    :goto_4
    move v2, v3

    :goto_5
    move v1, v2

    .line 319
    invoke-virtual {p1}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->getIdentities()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->updateGlobalIdentities(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_8

    if-eqz v1, :cond_7

    goto :goto_6

    :cond_7
    move v2, v0

    goto :goto_7

    :cond_8
    :goto_6
    move v2, v3

    :goto_7
    move v1, v2

    .line 320
    invoke-virtual {p1}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->isIdentitiesOnly()Z

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->updateGlobalIdentityOnly(Z)Z

    move-result v2

    if-nez v2, :cond_a

    if-eqz v1, :cond_9

    goto :goto_8

    :cond_9
    move v2, v0

    goto :goto_9

    :cond_a
    :goto_8
    move v2, v3

    :goto_9
    move v1, v2

    .line 322
    invoke-virtual {p1}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->getProperties()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->updateGlobalProperties(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 323
    .local v2, "updated":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Map;)I

    move-result v4

    if-gtz v4, :cond_b

    if-eqz v1, :cond_c

    :cond_b
    move v0, v3

    .line 325
    .end local v1    # "modified":Z
    .local v0, "modified":Z
    :cond_c
    return v0

    .line 308
    .end local v0    # "modified":Z
    .end local v2    # "updated":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_d
    :goto_a
    return v0
.end method

.method public processProperty(Ljava/lang/String;Ljava/util/Collection;Z)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "ignoreAlreadyInitialized"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 452
    .local p2, "valsList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v0, "No property name"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, "key":Ljava/lang/String;
    const/16 v1, 0x2c

    invoke-static {p2, v1}, Lorg/apache/sshd/common/util/GenericUtils;->join(Ljava/lang/Iterable;C)Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, "joinedValue":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->appendPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 456
    const-string v2, "HostName"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "Already initialized %s: %s"

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    .line 457
    invoke-static {p2}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v2

    if-ne v2, v6, :cond_0

    move v2, v6

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    const-string v7, "Multiple target hosts N/A: %s"

    invoke-static {v2, v7, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 459
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->getHostName()Ljava/lang/String;

    move-result-object v2

    .line 460
    .local v2, "curValue":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move v7, v5

    goto :goto_2

    :cond_2
    :goto_1
    move v7, v6

    :goto_2
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    aput-object v2, v4, v6

    invoke-static {v7, v3, v4}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 461
    invoke-virtual {p0, v1}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->setHostName(Ljava/lang/String;)V

    .line 462
    .end local v2    # "curValue":Ljava/lang/String;
    goto/16 :goto_a

    :cond_3
    const-string v2, "Port"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 463
    invoke-static {p2}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v2

    if-ne v2, v6, :cond_4

    move v2, v6

    goto :goto_3

    :cond_4
    move v2, v5

    :goto_3
    const-string v3, "Multiple target ports N/A: %s"

    invoke-static {v2, v3, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 465
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->getPort()I

    move-result v2

    .line 466
    .local v2, "curValue":I
    if-lez v2, :cond_6

    if-eqz p3, :cond_5

    goto :goto_4

    :cond_5
    move v3, v5

    goto :goto_5

    :cond_6
    :goto_4
    move v3, v6

    :goto_5
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const-string v7, "Already initialized %s: %d"

    invoke-static {v3, v7, v4}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 468
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 469
    .local v3, "newValue":I
    if-lez v3, :cond_7

    move v5, v6

    :cond_7
    int-to-long v6, v3

    const-string v4, "Bad new port value: %d"

    invoke-static {v5, v4, v6, v7}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 470
    invoke-virtual {p0, v3}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->setPort(I)V

    .line 471
    .end local v2    # "curValue":I
    .end local v3    # "newValue":I
    goto/16 :goto_a

    :cond_8
    const-string v2, "User"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 472
    invoke-static {p2}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v2

    if-ne v2, v6, :cond_9

    move v2, v6

    goto :goto_6

    :cond_9
    move v2, v5

    :goto_6
    const-string v7, "Multiple target users N/A: %s"

    invoke-static {v2, v7, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 474
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->getUsername()Ljava/lang/String;

    move-result-object v2

    .line 475
    .local v2, "curValue":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    if-eqz p3, :cond_a

    goto :goto_7

    :cond_a
    move v7, v5

    goto :goto_8

    :cond_b
    :goto_7
    move v7, v6

    :goto_8
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    aput-object v2, v4, v6

    invoke-static {v7, v3, v4}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 476
    invoke-virtual {p0, v1}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->setUsername(Ljava/lang/String;)V

    .line 477
    .end local v2    # "curValue":Ljava/lang/String;
    goto :goto_a

    :cond_c
    const-string v2, "IdentityFile"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 478
    invoke-static {p2}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v2

    if-lez v2, :cond_d

    move v5, v6

    :cond_d
    const-string v2, "No identity files specified"

    invoke-static {v5, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;)V

    .line 479
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 480
    .local v3, "id":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->addIdentity(Ljava/lang/String;)V

    .line 481
    .end local v3    # "id":Ljava/lang/String;
    goto :goto_9

    :cond_e
    goto :goto_a

    .line 482
    :cond_f
    const-string v2, "IdentitiesOnly"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 483
    nop

    .line 485
    const-string v2, "No identities option value"

    invoke-static {v1, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 484
    invoke-static {v2}, Lorg/apache/sshd/common/config/ConfigFileReaderSupport;->parseBooleanValue(Ljava/lang/String;)Z

    move-result v2

    .line 483
    invoke-virtual {p0, v2}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->setIdentitiesOnly(Z)V

    .line 487
    :cond_10
    :goto_a
    return-void
.end method

.method public removeProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 537
    const-string v0, "No property name"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->getProperties()Ljava/util/Map;

    move-result-object v1

    .line 539
    .local v1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 540
    const/4 v2, 0x0

    return-object v2

    .line 542
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2
.end method

.method public resolveHostName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "originalHost"    # Ljava/lang/String;

    .line 165
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->resolveHostName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resolvePort(I)I
    .locals 1
    .param p1, "originalPort"    # I

    .line 188
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->getPort()I

    move-result v0

    invoke-static {p1, v0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->resolvePort(II)I

    move-result v0

    return v0
.end method

.method public resolveUsername(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "originalUser"    # Ljava/lang/String;

    .line 213
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->resolveUsername(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .line 144
    iput-object p1, p0, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->host:Ljava/lang/String;

    .line 145
    invoke-static {p1}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->parseConfigValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->parsePatterns(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->setPatterns(Ljava/util/Collection;)V

    .line 146
    return-void
.end method

.method public setHost(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 149
    .local p1, "patterns":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "No patterns"

    invoke-static {p1, v1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/GenericUtils;->join(Ljava/lang/Iterable;C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->host:Ljava/lang/String;

    .line 150
    invoke-static {p1}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->parsePatterns(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->setPatterns(Ljava/util/Collection;)V

    .line 151
    return-void
.end method

.method public setHostName(Ljava/lang/String;)V
    .locals 0
    .param p1, "hostName"    # Ljava/lang/String;

    .line 161
    iput-object p1, p0, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->hostName:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setIdentities(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 245
    .local p1, "identities":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->identities:Ljava/util/Collection;

    .line 246
    return-void
.end method

.method public setIdentitiesOnly(Z)V
    .locals 1
    .param p1, "identitiesOnly"    # Z

    .line 256
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->exclusiveIdentites:Ljava/lang/Boolean;

    .line 257
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .line 176
    iput p1, p0, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->port:I

    .line 177
    return-void
.end method

.method public setProperties(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 552
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->properties:Ljava/util/Map;

    .line 553
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 520
    invoke-static {p2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {p0, p1}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->removeProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 524
    :cond_0
    const-string v0, "No property name"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->properties:Ljava/util/Map;

    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 526
    new-instance v1, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->properties:Ljava/util/Map;

    .line 529
    :cond_1
    iget-object v1, p0, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->properties:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .line 201
    iput-object p1, p0, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->username:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateGlobalHostName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 402
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 406
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->setHostName(Ljava/lang/String;)V

    .line 407
    const/4 v0, 0x1

    return v0

    .line 403
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateGlobalIdentities(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 371
    .local p1, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->getIdentities()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_1

    .line 375
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 376
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->addIdentity(Ljava/lang/String;)V

    .line 377
    .end local v1    # "id":Ljava/lang/String;
    goto :goto_0

    .line 379
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 372
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public updateGlobalIdentityOnly(Z)Z
    .locals 1
    .param p1, "identitiesOnly"    # Z

    .line 430
    iget-object v0, p0, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->exclusiveIdentites:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 431
    const/4 v0, 0x0

    return v0

    .line 434
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->setIdentitiesOnly(Z)V

    .line 435
    const/4 v0, 0x1

    return v0
.end method

.method public updateGlobalPort(I)Z
    .locals 1
    .param p1, "portValue"    # I

    .line 416
    if-lez p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->getPort()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 420
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->setPort(I)V

    .line 421
    const/4 v0, 0x1

    return v0

    .line 417
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateGlobalProperties(Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 335
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 339
    :cond_0
    const/4 v0, 0x0

    .line 341
    .local v0, "updated":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 342
    .local v2, "pe":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 343
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 344
    .local v4, "curValue":Ljava/lang/String;
    invoke-static {v4}, Lorg/apache/sshd/common/util/GenericUtils;->length(Ljava/lang/CharSequence;)I

    move-result v5

    if-lez v5, :cond_1

    .line 345
    goto :goto_0

    .line 348
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 349
    .local v5, "newValue":Ljava/lang/String;
    invoke-virtual {p0, v3, v5}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 351
    if-nez v0, :cond_2

    .line 352
    new-instance v6, Ljava/util/TreeMap;

    sget-object v7, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v6, v7}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    move-object v0, v6

    .line 355
    :cond_2
    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    .end local v2    # "pe":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "curValue":Ljava/lang/String;
    .end local v5    # "newValue":Ljava/lang/String;
    goto :goto_0

    .line 358
    :cond_3
    if-nez v0, :cond_4

    .line 359
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 361
    :cond_4
    return-object v0
.end method

.method public updateGlobalUserName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "user"    # Ljava/lang/String;

    .line 388
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 392
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->setUsername(Ljava/lang/String;)V

    .line 393
    const/4 v0, 0x1

    return v0

    .line 389
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
