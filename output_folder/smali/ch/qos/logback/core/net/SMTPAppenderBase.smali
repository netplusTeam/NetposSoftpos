.class public abstract Lch/qos/logback/core/net/SMTPAppenderBase;
.super Lch/qos/logback/core/AppenderBase;
.source "SMTPAppenderBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/qos/logback/core/net/SMTPAppenderBase$SenderRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/AppenderBase<",
        "TE;>;"
    }
.end annotation


# static fields
.field static EMPTY_IA_ARRAY:[Ljavax/mail/internet/InternetAddress; = null

.field static final MAX_DELAY_BETWEEN_STATUS_MESSAGES:J = 0x493e0000L


# instance fields
.field asynchronousSending:Z

.field protected cbTracker:Lch/qos/logback/core/spi/CyclicBufferTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/spi/CyclicBufferTracker<",
            "TE;>;"
        }
    .end annotation
.end field

.field private charsetEncoding:Ljava/lang/String;

.field delayBetweenStatusMessages:J

.field protected discriminator:Lch/qos/logback/core/sift/Discriminator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/sift/Discriminator<",
            "TE;>;"
        }
    .end annotation
.end field

.field private errorCount:I

.field protected eventEvaluator:Lch/qos/logback/core/boolex/EventEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/boolex/EventEvaluator<",
            "TE;>;"
        }
    .end annotation
.end field

.field private from:Ljava/lang/String;

.field private jndiLocation:Ljava/lang/String;

.field lastTrackerStatusPrint:J

.field protected layout:Lch/qos/logback/core/Layout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/Layout<",
            "TE;>;"
        }
    .end annotation
.end field

.field localhost:Ljava/lang/String;

.field password:Ljava/lang/String;

.field protected session:Ljavax/mail/Session;

.field private sessionViaJNDI:Z

.field private smtpHost:Ljava/lang/String;

.field private smtpPort:I

.field private ssl:Z

.field private starttls:Z

.field protected subjectLayout:Lch/qos/logback/core/Layout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/Layout<",
            "TE;>;"
        }
    .end annotation
.end field

.field private subjectStr:Ljava/lang/String;

.field private toPatternLayoutList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lch/qos/logback/core/pattern/PatternLayoutBase<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const/4 v0, 0x0

    new-array v0, v0, [Ljavax/mail/internet/InternetAddress;

    sput-object v0, Lch/qos/logback/core/net/SMTPAppenderBase;->EMPTY_IA_ARRAY:[Ljavax/mail/internet/InternetAddress;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 61
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/AppenderBase;-><init>()V

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->lastTrackerStatusPrint:J

    .line 68
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->delayBetweenStatusMessages:J

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->toPatternLayoutList:Ljava/util/List;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->subjectStr:Ljava/lang/String;

    .line 77
    const/16 v0, 0x19

    iput v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->smtpPort:I

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->starttls:Z

    .line 79
    iput-boolean v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->ssl:Z

    .line 80
    iput-boolean v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->sessionViaJNDI:Z

    .line 81
    const-string v1, "java:comp/env/mail/Session"

    iput-object v1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->jndiLocation:Ljava/lang/String;

    .line 87
    const/4 v1, 0x1

    iput-boolean v1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->asynchronousSending:Z

    .line 89
    const-string v1, "UTF-8"

    iput-object v1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->charsetEncoding:Ljava/lang/String;

    .line 95
    new-instance v1, Lch/qos/logback/core/sift/DefaultDiscriminator;

    invoke-direct {v1}, Lch/qos/logback/core/sift/DefaultDiscriminator;-><init>()V

    iput-object v1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->discriminator:Lch/qos/logback/core/sift/Discriminator;

    .line 98
    iput v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->errorCount:I

    .line 659
    return-void
.end method

.method private buildSessionFromProperties()Ljavax/mail/Session;
    .locals 6

    .line 147
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    new-instance v0, Ljava/util/Properties;

    invoke-static {}, Lch/qos/logback/core/util/OptionHelper;->getSystemProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    .line 148
    .local v0, "props":Ljava/util/Properties;
    iget-object v1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->smtpHost:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 149
    const-string v2, "mail.smtp.host"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_0
    iget v1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->smtpPort:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mail.smtp.port"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->localhost:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 154
    const-string v2, "mail.smtp.localhost"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_1
    const/4 v1, 0x0

    .line 159
    .local v1, "loginAuthenticator":Lch/qos/logback/core/net/LoginAuthenticator;
    iget-object v2, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->username:Ljava/lang/String;

    const-string/jumbo v3, "true"

    if-eqz v2, :cond_2

    .line 160
    new-instance v2, Lch/qos/logback/core/net/LoginAuthenticator;

    iget-object v4, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->username:Ljava/lang/String;

    iget-object v5, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->password:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Lch/qos/logback/core/net/LoginAuthenticator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 161
    const-string v2, "mail.smtp.auth"

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_2
    invoke-virtual {p0}, Lch/qos/logback/core/net/SMTPAppenderBase;->isSTARTTLS()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lch/qos/logback/core/net/SMTPAppenderBase;->isSSL()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 165
    const-string v2, "Both SSL and StartTLS cannot be enabled simultaneously"

    invoke-virtual {p0, v2}, Lch/qos/logback/core/net/SMTPAppenderBase;->addError(Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_3
    invoke-virtual {p0}, Lch/qos/logback/core/net/SMTPAppenderBase;->isSTARTTLS()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 169
    const-string v2, "mail.smtp.starttls.enable"

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_4
    invoke-virtual {p0}, Lch/qos/logback/core/net/SMTPAppenderBase;->isSSL()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 172
    const-string v2, "javax.net.ssl.SSLSocketFactory"

    .line 173
    .local v2, "SSL_FACTORY":Ljava/lang/String;
    iget v4, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->smtpPort:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "mail.smtp.socketFactory.port"

    invoke-virtual {v0, v5, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v4, "mail.smtp.socketFactory.class"

    invoke-virtual {v0, v4, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v4, "mail.smtp.socketFactory.fallback"

    invoke-virtual {v0, v4, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .end local v2    # "SSL_FACTORY":Ljava/lang/String;
    :cond_5
    :goto_0
    invoke-static {v0, v1}, Ljavax/mail/Session;->getInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v2

    return-object v2
.end method

.method private lookupSessionInJNDI()Ljavax/mail/Session;
    .locals 4

    .line 135
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Looking up javax.mail.Session at JNDI location ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->jndiLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/net/SMTPAppenderBase;->addInfo(Ljava/lang/String;)V

    .line 137
    :try_start_0
    new-instance v0, Ljavax/naming/InitialContext;

    invoke-direct {v0}, Ljavax/naming/InitialContext;-><init>()V

    .line 138
    .local v0, "initialContext":Ljavax/naming/Context;
    iget-object v2, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->jndiLocation:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljavax/naming/Context;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 139
    .local v2, "obj":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Ljavax/mail/Session;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 140
    .end local v0    # "initialContext":Ljavax/naming/Context;
    .end local v2    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to obtain javax.mail.Session from JNDI location ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->jndiLocation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/net/SMTPAppenderBase;->addError(Ljava/lang/String;)V

    .line 142
    const/4 v1, 0x0

    return-object v1
.end method

.method private parseAddress(Ljava/lang/Object;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/List<",
            "Ljavax/mail/internet/InternetAddress;",
            ">;"
        }
    .end annotation

    .line 283
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    .local p1, "event":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->toPatternLayoutList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 285
    .local v0, "len":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v1, "iaList":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/internet/InternetAddress;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 289
    :try_start_0
    iget-object v3, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->toPatternLayoutList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/qos/logback/core/pattern/PatternLayoutBase;

    .line 290
    .local v3, "emailPL":Lch/qos/logback/core/pattern/PatternLayoutBase;, "Lch/qos/logback/core/pattern/PatternLayoutBase<TE;>;"
    invoke-virtual {v3, p1}, Lch/qos/logback/core/pattern/PatternLayoutBase;->doLayout(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 291
    .local v4, "emailAdrr":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 294
    :cond_0
    const/4 v5, 0x1

    invoke-static {v4, v5}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v5

    .line 295
    .local v5, "tmp":[Ljavax/mail/internet/InternetAddress;
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljavax/mail/internet/AddressException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    nop

    .end local v3    # "emailPL":Lch/qos/logback/core/pattern/PatternLayoutBase;, "Lch/qos/logback/core/pattern/PatternLayoutBase<TE;>;"
    .end local v4    # "emailAdrr":Ljava/lang/String;
    .end local v5    # "tmp":[Ljavax/mail/internet/InternetAddress;
    goto :goto_2

    .line 292
    .restart local v3    # "emailPL":Lch/qos/logback/core/pattern/PatternLayoutBase;, "Lch/qos/logback/core/pattern/PatternLayoutBase<TE;>;"
    .restart local v4    # "emailAdrr":Ljava/lang/String;
    :cond_1
    :goto_1
    nop

    .line 287
    .end local v3    # "emailPL":Lch/qos/logback/core/pattern/PatternLayoutBase;, "Lch/qos/logback/core/pattern/PatternLayoutBase<TE;>;"
    .end local v4    # "emailAdrr":Ljava/lang/String;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 296
    :catch_0
    move-exception v3

    .line 297
    .local v3, "e":Ljavax/mail/internet/AddressException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not parse email address for ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->toPatternLayoutList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] for event ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lch/qos/logback/core/net/SMTPAppenderBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 298
    return-object v1

    .line 302
    .end local v2    # "i":I
    .end local v3    # "e":Ljavax/mail/internet/AddressException;
    :cond_2
    return-object v1
.end method


# virtual methods
.method public addTo(Ljava/lang/String;)V
    .locals 2
    .param p1, "to"    # Ljava/lang/String;

    .line 543
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/net/SMTPAppenderBase;->makeNewToPatternLayout(Ljava/lang/String;)Lch/qos/logback/core/pattern/PatternLayoutBase;

    move-result-object v0

    .line 547
    .local v0, "plb":Lch/qos/logback/core/pattern/PatternLayoutBase;
    iget-object v1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->context:Lch/qos/logback/core/Context;

    invoke-virtual {v0, v1}, Lch/qos/logback/core/pattern/PatternLayoutBase;->setContext(Lch/qos/logback/core/Context;)V

    .line 548
    invoke-virtual {v0}, Lch/qos/logback/core/pattern/PatternLayoutBase;->start()V

    .line 549
    iget-object v1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->toPatternLayoutList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    return-void

    .line 544
    .end local v0    # "plb":Lch/qos/logback/core/pattern/PatternLayoutBase;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null or empty <to> property"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected append(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 190
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    .local p1, "eventObject":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lch/qos/logback/core/net/SMTPAppenderBase;->checkEntryConditions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->discriminator:Lch/qos/logback/core/sift/Discriminator;

    invoke-interface {v0, p1}, Lch/qos/logback/core/sift/Discriminator;->getDiscriminatingValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "key":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 196
    .local v1, "now":J
    iget-object v3, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->cbTracker:Lch/qos/logback/core/spi/CyclicBufferTracker;

    invoke-virtual {v3, v0, v1, v2}, Lch/qos/logback/core/spi/CyclicBufferTracker;->getOrCreate(Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/qos/logback/core/helpers/CyclicBuffer;

    .line 197
    .local v3, "cb":Lch/qos/logback/core/helpers/CyclicBuffer;, "Lch/qos/logback/core/helpers/CyclicBuffer<TE;>;"
    invoke-virtual {p0, v3, p1}, Lch/qos/logback/core/net/SMTPAppenderBase;->subAppend(Lch/qos/logback/core/helpers/CyclicBuffer;Ljava/lang/Object;)V

    .line 200
    :try_start_0
    iget-object v4, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->eventEvaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    invoke-interface {v4, p1}, Lch/qos/logback/core/boolex/EventEvaluator;->evaluate(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 202
    new-instance v4, Lch/qos/logback/core/helpers/CyclicBuffer;

    invoke-direct {v4, v3}, Lch/qos/logback/core/helpers/CyclicBuffer;-><init>(Lch/qos/logback/core/helpers/CyclicBuffer;)V

    .line 204
    .local v4, "cbClone":Lch/qos/logback/core/helpers/CyclicBuffer;, "Lch/qos/logback/core/helpers/CyclicBuffer<TE;>;"
    invoke-virtual {v3}, Lch/qos/logback/core/helpers/CyclicBuffer;->clear()V

    .line 206
    iget-boolean v5, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->asynchronousSending:Z

    if-eqz v5, :cond_1

    .line 208
    new-instance v5, Lch/qos/logback/core/net/SMTPAppenderBase$SenderRunnable;

    invoke-direct {v5, p0, v4, p1}, Lch/qos/logback/core/net/SMTPAppenderBase$SenderRunnable;-><init>(Lch/qos/logback/core/net/SMTPAppenderBase;Lch/qos/logback/core/helpers/CyclicBuffer;Ljava/lang/Object;)V

    .line 209
    .local v5, "senderRunnable":Lch/qos/logback/core/net/SMTPAppenderBase$SenderRunnable;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>.SenderRunnable;"
    iget-object v6, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->context:Lch/qos/logback/core/Context;

    invoke-interface {v6}, Lch/qos/logback/core/Context;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 210
    .end local v5    # "senderRunnable":Lch/qos/logback/core/net/SMTPAppenderBase$SenderRunnable;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>.SenderRunnable;"
    goto :goto_0

    .line 212
    :cond_1
    invoke-virtual {p0, v4, p1}, Lch/qos/logback/core/net/SMTPAppenderBase;->sendBuffer(Lch/qos/logback/core/helpers/CyclicBuffer;Ljava/lang/Object;)V
    :try_end_0
    .catch Lch/qos/logback/core/boolex/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v4    # "cbClone":Lch/qos/logback/core/helpers/CyclicBuffer;, "Lch/qos/logback/core/helpers/CyclicBuffer<TE;>;"
    :cond_2
    :goto_0
    goto :goto_1

    .line 215
    :catch_0
    move-exception v4

    .line 216
    .local v4, "ex":Lch/qos/logback/core/boolex/EvaluationException;
    iget v5, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->errorCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->errorCount:I

    .line 217
    const/4 v6, 0x4

    if-ge v5, v6, :cond_3

    .line 218
    const-string v5, "SMTPAppender\'s EventEvaluator threw an Exception-"

    invoke-virtual {p0, v5, v4}, Lch/qos/logback/core/net/SMTPAppenderBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    .end local v4    # "ex":Lch/qos/logback/core/boolex/EvaluationException;
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lch/qos/logback/core/net/SMTPAppenderBase;->eventMarksEndOfLife(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 224
    iget-object v4, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->cbTracker:Lch/qos/logback/core/spi/CyclicBufferTracker;

    invoke-virtual {v4, v0}, Lch/qos/logback/core/spi/CyclicBufferTracker;->endOfLife(Ljava/lang/String;)V

    .line 227
    :cond_4
    iget-object v4, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->cbTracker:Lch/qos/logback/core/spi/CyclicBufferTracker;

    invoke-virtual {v4, v1, v2}, Lch/qos/logback/core/spi/CyclicBufferTracker;->removeStaleComponents(J)V

    .line 229
    iget-wide v4, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->lastTrackerStatusPrint:J

    iget-wide v6, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->delayBetweenStatusMessages:J

    add-long/2addr v4, v6

    cmp-long v4, v4, v1

    if-gez v4, :cond_5

    .line 230
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMTPAppender ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] is tracking ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->cbTracker:Lch/qos/logback/core/spi/CyclicBufferTracker;

    invoke-virtual {v5}, Lch/qos/logback/core/spi/CyclicBufferTracker;->getComponentCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] buffers"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lch/qos/logback/core/net/SMTPAppenderBase;->addInfo(Ljava/lang/String;)V

    .line 231
    iput-wide v1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->lastTrackerStatusPrint:J

    .line 233
    iget-wide v4, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->delayBetweenStatusMessages:J

    const-wide/32 v6, 0x493e0000

    cmp-long v6, v4, v6

    if-gez v6, :cond_5

    .line 234
    const-wide/16 v6, 0x4

    mul-long/2addr v4, v6

    iput-wide v4, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->delayBetweenStatusMessages:J

    .line 237
    :cond_5
    return-void
.end method

.method public checkEntryConditions()Z
    .locals 3

    .line 252
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    iget-boolean v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->started:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to append to a non-started appender: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lch/qos/logback/core/net/SMTPAppenderBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/net/SMTPAppenderBase;->addError(Ljava/lang/String;)V

    .line 254
    return v1

    .line 257
    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->eventEvaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    if-nez v0, :cond_1

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No EventEvaluator is set for appender ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/net/SMTPAppenderBase;->addError(Ljava/lang/String;)V

    .line 259
    return v1

    .line 262
    :cond_1
    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->layout:Lch/qos/logback/core/Layout;

    if-nez v0, :cond_2

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No layout set for appender named ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]. For more information, please visit http://logback.qos.ch/codes.html#smtp_no_layout"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/net/SMTPAppenderBase;->addError(Ljava/lang/String;)V

    .line 264
    return v1

    .line 266
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract eventMarksEndOfLife(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation
.end method

.method protected abstract fillBuffer(Lch/qos/logback/core/helpers/CyclicBuffer;Ljava/lang/StringBuffer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/helpers/CyclicBuffer<",
            "TE;>;",
            "Ljava/lang/StringBuffer;",
            ")V"
        }
    .end annotation
.end method

.method getAddress(Ljava/lang/String;)Ljavax/mail/internet/InternetAddress;
    .locals 3
    .param p1, "addressStr"    # Ljava/lang/String;

    .line 275
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    :try_start_0
    new-instance v0, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v0, p1}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/internet/AddressException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljavax/mail/internet/AddressException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse address ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lch/qos/logback/core/net/SMTPAppenderBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 278
    const/4 v1, 0x0

    return-object v1
.end method

.method public getCharsetEncoding()Ljava/lang/String;
    .locals 1

    .line 609
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->charsetEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getCyclicBufferTracker()Lch/qos/logback/core/spi/CyclicBufferTracker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lch/qos/logback/core/spi/CyclicBufferTracker<",
            "TE;>;"
        }
    .end annotation

    .line 512
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->cbTracker:Lch/qos/logback/core/spi/CyclicBufferTracker;

    return-object v0
.end method

.method public getDiscriminator()Lch/qos/logback/core/sift/Discriminator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lch/qos/logback/core/sift/Discriminator<",
            "TE;>;"
        }
    .end annotation

    .line 520
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->discriminator:Lch/qos/logback/core/sift/Discriminator;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .line 400
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getJndiLocation()Ljava/lang/String;
    .locals 1

    .line 613
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->jndiLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getLayout()Lch/qos/logback/core/Layout;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lch/qos/logback/core/Layout<",
            "TE;>;"
        }
    .end annotation

    .line 652
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->layout:Lch/qos/logback/core/Layout;

    return-object v0
.end method

.method public getLocalhost()Ljava/lang/String;
    .locals 1

    .line 494
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->localhost:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 597
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getSMTPHost()Ljava/lang/String;
    .locals 1

    .line 447
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    invoke-virtual {p0}, Lch/qos/logback/core/net/SMTPAppenderBase;->getSmtpHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSMTPPort()I
    .locals 1

    .line 481
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    invoke-virtual {p0}, Lch/qos/logback/core/net/SMTPAppenderBase;->getSmtpPort()I

    move-result v0

    return v0
.end method

.method public getSmtpHost()Ljava/lang/String;
    .locals 1

    .line 454
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->smtpHost:Ljava/lang/String;

    return-object v0
.end method

.method public getSmtpPort()I
    .locals 1

    .line 490
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    iget v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->smtpPort:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 407
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->subjectStr:Ljava/lang/String;

    return-object v0
.end method

.method public getToAsListOfString()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 555
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 556
    .local v0, "toList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->toPatternLayoutList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/qos/logback/core/pattern/PatternLayoutBase;

    .line 557
    .local v2, "plb":Lch/qos/logback/core/pattern/PatternLayoutBase;
    invoke-virtual {v2}, Lch/qos/logback/core/pattern/PatternLayoutBase;->getPattern()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    .end local v2    # "plb":Lch/qos/logback/core/pattern/PatternLayoutBase;
    goto :goto_0

    .line 559
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object v0
.end method

.method public getToList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lch/qos/logback/core/pattern/PatternLayoutBase<",
            "TE;>;>;"
        }
    .end annotation

    .line 309
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->toPatternLayoutList:Ljava/util/List;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 589
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->username:Ljava/lang/String;

    return-object v0
.end method

.method public isAsynchronousSending()Z
    .locals 1

    .line 528
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    iget-boolean v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->asynchronousSending:Z

    return v0
.end method

.method public isSSL()Z
    .locals 1

    .line 571
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    iget-boolean v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->ssl:Z

    return v0
.end method

.method public isSTARTTLS()Z
    .locals 1

    .line 563
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    iget-boolean v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->starttls:Z

    return v0
.end method

.method public isSessionViaJNDI()Z
    .locals 1

    .line 628
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    iget-boolean v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->sessionViaJNDI:Z

    return v0
.end method

.method protected abstract makeNewToPatternLayout(Ljava/lang/String;)Lch/qos/logback/core/pattern/PatternLayoutBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lch/qos/logback/core/pattern/PatternLayoutBase<",
            "TE;>;"
        }
    .end annotation
.end method

.method protected abstract makeSubjectLayout(Ljava/lang/String;)Lch/qos/logback/core/Layout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lch/qos/logback/core/Layout<",
            "TE;>;"
        }
    .end annotation
.end method

.method protected sendBuffer(Lch/qos/logback/core/helpers/CyclicBuffer;Ljava/lang/Object;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/helpers/CyclicBuffer<",
            "TE;>;TE;)V"
        }
    .end annotation

    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    .local p1, "cb":Lch/qos/logback/core/helpers/CyclicBuffer;, "Lch/qos/logback/core/helpers/CyclicBuffer<TE;>;"
    .local p2, "lastEventObject":Ljava/lang/Object;, "TE;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 320
    :try_start_0
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 322
    .local v0, "part":Ljavax/mail/internet/MimeBodyPart;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 324
    .local v3, "sbuf":Ljava/lang/StringBuffer;
    iget-object v4, v1, Lch/qos/logback/core/net/SMTPAppenderBase;->layout:Lch/qos/logback/core/Layout;

    invoke-interface {v4}, Lch/qos/logback/core/Layout;->getFileHeader()Ljava/lang/String;

    move-result-object v4

    .line 325
    .local v4, "header":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 326
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    :cond_0
    iget-object v5, v1, Lch/qos/logback/core/net/SMTPAppenderBase;->layout:Lch/qos/logback/core/Layout;

    invoke-interface {v5}, Lch/qos/logback/core/Layout;->getPresentationHeader()Ljava/lang/String;

    move-result-object v5

    .line 329
    .local v5, "presentationHeader":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 330
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 332
    :cond_1
    move-object/from16 v6, p1

    :try_start_1
    invoke-virtual {v1, v6, v3}, Lch/qos/logback/core/net/SMTPAppenderBase;->fillBuffer(Lch/qos/logback/core/helpers/CyclicBuffer;Ljava/lang/StringBuffer;)V

    .line 333
    iget-object v7, v1, Lch/qos/logback/core/net/SMTPAppenderBase;->layout:Lch/qos/logback/core/Layout;

    invoke-interface {v7}, Lch/qos/logback/core/Layout;->getPresentationFooter()Ljava/lang/String;

    move-result-object v7

    .line 334
    .local v7, "presentationFooter":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 335
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 337
    :cond_2
    iget-object v8, v1, Lch/qos/logback/core/net/SMTPAppenderBase;->layout:Lch/qos/logback/core/Layout;

    invoke-interface {v8}, Lch/qos/logback/core/Layout;->getFileFooter()Ljava/lang/String;

    move-result-object v8

    .line 338
    .local v8, "footer":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 339
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    :cond_3
    const-string v9, "Undefined subject"

    .line 343
    .local v9, "subjectStr":Ljava/lang/String;
    iget-object v10, v1, Lch/qos/logback/core/net/SMTPAppenderBase;->subjectLayout:Lch/qos/logback/core/Layout;

    if-eqz v10, :cond_5

    .line 344
    invoke-interface {v10, v2}, Lch/qos/logback/core/Layout;->doLayout(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 349
    const/4 v10, -0x1

    if-eqz v9, :cond_4

    const/16 v11, 0xa

    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    goto :goto_0

    :cond_4
    move v11, v10

    .line 350
    .local v11, "newLinePos":I
    :goto_0
    if-le v11, v10, :cond_5

    .line 351
    const/4 v10, 0x0

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 355
    .end local v11    # "newLinePos":I
    :cond_5
    new-instance v10, Ljavax/mail/internet/MimeMessage;

    iget-object v11, v1, Lch/qos/logback/core/net/SMTPAppenderBase;->session:Ljavax/mail/Session;

    invoke-direct {v10, v11}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    .line 357
    .local v10, "mimeMsg":Ljavax/mail/internet/MimeMessage;
    iget-object v11, v1, Lch/qos/logback/core/net/SMTPAppenderBase;->from:Ljava/lang/String;

    if-eqz v11, :cond_6

    .line 358
    invoke-virtual {v1, v11}, Lch/qos/logback/core/net/SMTPAppenderBase;->getAddress(Ljava/lang/String;)Ljavax/mail/internet/InternetAddress;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljavax/mail/internet/MimeMessage;->setFrom(Ljavax/mail/Address;)V

    goto :goto_1

    .line 360
    :cond_6
    invoke-virtual {v10}, Ljavax/mail/internet/MimeMessage;->setFrom()V

    .line 363
    :goto_1
    iget-object v11, v1, Lch/qos/logback/core/net/SMTPAppenderBase;->charsetEncoding:Ljava/lang/String;

    invoke-virtual {v10, v9, v11}, Ljavax/mail/internet/MimeMessage;->setSubject(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-direct {v1, v2}, Lch/qos/logback/core/net/SMTPAppenderBase;->parseAddress(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 366
    .local v11, "destinationAddresses":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/internet/InternetAddress;>;"
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 367
    const-string v12, "Empty destination address. Aborting email transmission"

    invoke-virtual {v1, v12}, Lch/qos/logback/core/net/SMTPAppenderBase;->addInfo(Ljava/lang/String;)V

    .line 368
    return-void

    .line 371
    :cond_7
    sget-object v12, Lch/qos/logback/core/net/SMTPAppenderBase;->EMPTY_IA_ARRAY:[Ljavax/mail/internet/InternetAddress;

    invoke-interface {v11, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljavax/mail/internet/InternetAddress;

    .line 372
    .local v12, "toAddressArray":[Ljavax/mail/internet/InternetAddress;
    sget-object v13, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v10, v13, v12}, Ljavax/mail/internet/MimeMessage;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    .line 374
    iget-object v13, v1, Lch/qos/logback/core/net/SMTPAppenderBase;->layout:Lch/qos/logback/core/Layout;

    invoke-interface {v13}, Lch/qos/logback/core/Layout;->getContentType()Ljava/lang/String;

    move-result-object v13

    .line 376
    .local v13, "contentType":Ljava/lang/String;
    invoke-static {v13}, Lch/qos/logback/core/util/ContentTypeUtil;->isTextual(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 377
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v1, Lch/qos/logback/core/net/SMTPAppenderBase;->charsetEncoding:Ljava/lang/String;

    invoke-static {v13}, Lch/qos/logback/core/util/ContentTypeUtil;->getSubType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v14, v15, v2}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 379
    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v14, v1, Lch/qos/logback/core/net/SMTPAppenderBase;->layout:Lch/qos/logback/core/Layout;

    invoke-interface {v14}, Lch/qos/logback/core/Layout;->getContentType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v2, v14}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    :goto_2
    new-instance v2, Ljavax/mail/internet/MimeMultipart;

    invoke-direct {v2}, Ljavax/mail/internet/MimeMultipart;-><init>()V

    .line 383
    .local v2, "mp":Ljavax/mail/Multipart;
    invoke-virtual {v2, v0}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 384
    invoke-virtual {v10, v2}, Ljavax/mail/internet/MimeMessage;->setContent(Ljavax/mail/Multipart;)V

    .line 386
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10, v14}, Ljavax/mail/internet/MimeMessage;->setSentDate(Ljava/util/Date;)V

    .line 387
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "About to send out SMTP message \""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\" to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v12}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lch/qos/logback/core/net/SMTPAppenderBase;->addInfo(Ljava/lang/String;)V

    .line 388
    invoke-static {v10}, Ljavax/mail/Transport;->send(Ljavax/mail/Message;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 391
    .end local v0    # "part":Ljavax/mail/internet/MimeBodyPart;
    .end local v2    # "mp":Ljavax/mail/Multipart;
    .end local v3    # "sbuf":Ljava/lang/StringBuffer;
    .end local v4    # "header":Ljava/lang/String;
    .end local v5    # "presentationHeader":Ljava/lang/String;
    .end local v7    # "presentationFooter":Ljava/lang/String;
    .end local v8    # "footer":Ljava/lang/String;
    .end local v9    # "subjectStr":Ljava/lang/String;
    .end local v10    # "mimeMsg":Ljavax/mail/internet/MimeMessage;
    .end local v11    # "destinationAddresses":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/internet/InternetAddress;>;"
    .end local v12    # "toAddressArray":[Ljavax/mail/internet/InternetAddress;
    .end local v13    # "contentType":Ljava/lang/String;
    goto :goto_4

    .line 389
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v6, p1

    .line 390
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    const-string v2, "Error occurred while sending e-mail notification."

    invoke-virtual {v1, v2, v0}, Lch/qos/logback/core/net/SMTPAppenderBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 392
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method public setAsynchronousSending(Z)V
    .locals 0
    .param p1, "asynchronousSending"    # Z

    .line 539
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    iput-boolean p1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->asynchronousSending:Z

    .line 540
    return-void
.end method

.method public setCharsetEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "charsetEncoding"    # Ljava/lang/String;

    .line 648
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->charsetEncoding:Ljava/lang/String;

    .line 649
    return-void
.end method

.method public setCyclicBufferTracker(Lch/qos/logback/core/spi/CyclicBufferTracker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/spi/CyclicBufferTracker<",
            "TE;>;)V"
        }
    .end annotation

    .line 516
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    .local p1, "cbTracker":Lch/qos/logback/core/spi/CyclicBufferTracker;, "Lch/qos/logback/core/spi/CyclicBufferTracker<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->cbTracker:Lch/qos/logback/core/spi/CyclicBufferTracker;

    .line 517
    return-void
.end method

.method public setDiscriminator(Lch/qos/logback/core/sift/Discriminator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/sift/Discriminator<",
            "TE;>;)V"
        }
    .end annotation

    .line 524
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    .local p1, "discriminator":Lch/qos/logback/core/sift/Discriminator;, "Lch/qos/logback/core/sift/Discriminator<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->discriminator:Lch/qos/logback/core/sift/Discriminator;

    .line 525
    return-void
.end method

.method public setEvaluator(Lch/qos/logback/core/boolex/EventEvaluator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/boolex/EventEvaluator<",
            "TE;>;)V"
        }
    .end annotation

    .line 585
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    .local p1, "eventEvaluator":Lch/qos/logback/core/boolex/EventEvaluator;, "Lch/qos/logback/core/boolex/EventEvaluator<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->eventEvaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    .line 586
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;

    .line 415
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->from:Ljava/lang/String;

    .line 416
    return-void
.end method

.method public setJndiLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "jndiLocation"    # Ljava/lang/String;

    .line 624
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->jndiLocation:Ljava/lang/String;

    .line 625
    return-void
.end method

.method public setLayout(Lch/qos/logback/core/Layout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/Layout<",
            "TE;>;)V"
        }
    .end annotation

    .line 656
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    .local p1, "layout":Lch/qos/logback/core/Layout;, "Lch/qos/logback/core/Layout<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->layout:Lch/qos/logback/core/Layout;

    .line 657
    return-void
.end method

.method public setLocalhost(Ljava/lang/String;)V
    .locals 0
    .param p1, "localhost"    # Ljava/lang/String;

    .line 508
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->localhost:Ljava/lang/String;

    .line 509
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .line 601
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->password:Ljava/lang/String;

    .line 602
    return-void
.end method

.method public setSMTPHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "smtpHost"    # Ljava/lang/String;

    .line 432
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    invoke-virtual {p0, p1}, Lch/qos/logback/core/net/SMTPAppenderBase;->setSmtpHost(Ljava/lang/String;)V

    .line 433
    return-void
.end method

.method public setSMTPPort(I)V
    .locals 0
    .param p1, "port"    # I

    .line 463
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    invoke-virtual {p0, p1}, Lch/qos/logback/core/net/SMTPAppenderBase;->setSmtpPort(I)V

    .line 464
    return-void
.end method

.method public setSSL(Z)V
    .locals 0
    .param p1, "ssl"    # Z

    .line 575
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    iput-boolean p1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->ssl:Z

    .line 576
    return-void
.end method

.method public setSTARTTLS(Z)V
    .locals 0
    .param p1, "startTLS"    # Z

    .line 567
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    iput-boolean p1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->starttls:Z

    .line 568
    return-void
.end method

.method public setSessionViaJNDI(Z)V
    .locals 0
    .param p1, "sessionViaJNDI"    # Z

    .line 638
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    iput-boolean p1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->sessionViaJNDI:Z

    .line 639
    return-void
.end method

.method public setSmtpHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "smtpHost"    # Ljava/lang/String;

    .line 440
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->smtpHost:Ljava/lang/String;

    .line 441
    return-void
.end method

.method public setSmtpPort(I)V
    .locals 0
    .param p1, "port"    # I

    .line 472
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    iput p1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->smtpPort:I

    .line 473
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .line 423
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->subjectStr:Ljava/lang/String;

    .line 424
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .line 593
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->username:Ljava/lang/String;

    .line 594
    return-void
.end method

.method public start()V
    .locals 1

    .line 115
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->cbTracker:Lch/qos/logback/core/spi/CyclicBufferTracker;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lch/qos/logback/core/spi/CyclicBufferTracker;

    invoke-direct {v0}, Lch/qos/logback/core/spi/CyclicBufferTracker;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->cbTracker:Lch/qos/logback/core/spi/CyclicBufferTracker;

    .line 119
    :cond_0
    iget-boolean v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->sessionViaJNDI:Z

    if-eqz v0, :cond_1

    .line 120
    invoke-direct {p0}, Lch/qos/logback/core/net/SMTPAppenderBase;->lookupSessionInJNDI()Ljavax/mail/Session;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->session:Ljavax/mail/Session;

    goto :goto_0

    .line 122
    :cond_1
    invoke-direct {p0}, Lch/qos/logback/core/net/SMTPAppenderBase;->buildSessionFromProperties()Ljavax/mail/Session;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->session:Ljavax/mail/Session;

    .line 124
    :goto_0
    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->session:Ljavax/mail/Session;

    if-nez v0, :cond_2

    .line 125
    const-string v0, "Failed to obtain javax.mail.Session. Cannot start."

    invoke-virtual {p0, v0}, Lch/qos/logback/core/net/SMTPAppenderBase;->addError(Ljava/lang/String;)V

    .line 126
    return-void

    .line 129
    :cond_2
    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->subjectStr:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lch/qos/logback/core/net/SMTPAppenderBase;->makeSubjectLayout(Ljava/lang/String;)Lch/qos/logback/core/Layout;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->subjectLayout:Lch/qos/logback/core/Layout;

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->started:Z

    .line 132
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 1

    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    monitor-enter p0

    .line 270
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    monitor-exit p0

    return-void

    .line 269
    .end local p0    # "this":Lch/qos/logback/core/net/SMTPAppenderBase;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract subAppend(Lch/qos/logback/core/helpers/CyclicBuffer;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/helpers/CyclicBuffer<",
            "TE;>;TE;)V"
        }
    .end annotation
.end method
