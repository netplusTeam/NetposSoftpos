.class public abstract Lch/qos/logback/core/net/SyslogAppenderBase;
.super Lch/qos/logback/core/AppenderBase;
.source "SyslogAppenderBase.java"


# annotations
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
.field static final MAX_MESSAGE_SIZE_LIMIT:I = 0xfde8

.field static final SYSLOG_LAYOUT_URL:Ljava/lang/String; = "http://logback.qos.ch/codes.html#syslog_layout"


# instance fields
.field charset:Ljava/nio/charset/Charset;

.field facilityStr:Ljava/lang/String;

.field layout:Lch/qos/logback/core/Layout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/Layout<",
            "TE;>;"
        }
    .end annotation
.end field

.field maxMessageSize:I

.field port:I

.field sos:Lch/qos/logback/core/net/SyslogOutputStream;

.field protected suffixPattern:Ljava/lang/String;

.field syslogHost:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    .local p0, "this":Lch/qos/logback/core/net/SyslogAppenderBase;, "Lch/qos/logback/core/net/SyslogAppenderBase<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/AppenderBase;-><init>()V

    .line 43
    const/16 v0, 0x202

    iput v0, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->port:I

    return-void
.end method

.method public static facilityStringToint(Ljava/lang/String;)I
    .locals 3
    .param p0, "facilityStr"    # Ljava/lang/String;

    .line 126
    const-string v0, "KERN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const/4 v0, 0x0

    return v0

    .line 128
    :cond_0
    const-string v0, "USER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    const/16 v0, 0x8

    return v0

    .line 130
    :cond_1
    const-string v0, "MAIL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    const/16 v0, 0x10

    return v0

    .line 132
    :cond_2
    const-string v0, "DAEMON"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    const/16 v0, 0x18

    return v0

    .line 134
    :cond_3
    const-string v0, "AUTH"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 135
    const/16 v0, 0x20

    return v0

    .line 136
    :cond_4
    const-string v0, "SYSLOG"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 137
    const/16 v0, 0x28

    return v0

    .line 138
    :cond_5
    const-string v0, "LPR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 139
    const/16 v0, 0x30

    return v0

    .line 140
    :cond_6
    const-string v0, "NEWS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 141
    const/16 v0, 0x38

    return v0

    .line 142
    :cond_7
    const-string v0, "UUCP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 143
    const/16 v0, 0x40

    return v0

    .line 144
    :cond_8
    const-string v0, "CRON"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 145
    const/16 v0, 0x48

    return v0

    .line 146
    :cond_9
    const-string v0, "AUTHPRIV"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 147
    const/16 v0, 0x50

    return v0

    .line 148
    :cond_a
    const-string v0, "FTP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 149
    const/16 v0, 0x58

    return v0

    .line 150
    :cond_b
    const-string v0, "NTP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 151
    const/16 v0, 0x60

    return v0

    .line 152
    :cond_c
    const-string v0, "AUDIT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 153
    const/16 v0, 0x68

    return v0

    .line 154
    :cond_d
    const-string v0, "ALERT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 155
    const/16 v0, 0x70

    return v0

    .line 156
    :cond_e
    const-string v0, "CLOCK"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 157
    const/16 v0, 0x78

    return v0

    .line 158
    :cond_f
    const-string v0, "LOCAL0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 159
    const/16 v0, 0x80

    return v0

    .line 160
    :cond_10
    const-string v0, "LOCAL1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 161
    const/16 v0, 0x88

    return v0

    .line 162
    :cond_11
    const-string v0, "LOCAL2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 163
    const/16 v0, 0x90

    return v0

    .line 164
    :cond_12
    const-string v0, "LOCAL3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 165
    const/16 v0, 0x98

    return v0

    .line 166
    :cond_13
    const-string v0, "LOCAL4"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 167
    const/16 v0, 0xa0

    return v0

    .line 168
    :cond_14
    const-string v0, "LOCAL5"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 169
    const/16 v0, 0xa8

    return v0

    .line 170
    :cond_15
    const-string v0, "LOCAL6"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 171
    const/16 v0, 0xb0

    return v0

    .line 172
    :cond_16
    const-string v0, "LOCAL7"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 173
    const/16 v0, 0xb8

    return v0

    .line 175
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid syslog facility string"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected append(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 95
    .local p0, "this":Lch/qos/logback/core/net/SyslogAppenderBase;, "Lch/qos/logback/core/net/SyslogAppenderBase<TE;>;"
    .local p1, "eventObject":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lch/qos/logback/core/net/SyslogAppenderBase;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    return-void

    .line 100
    :cond_0
    :try_start_0
    iget-object v0, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->layout:Lch/qos/logback/core/Layout;

    invoke-interface {v0, p1}, Lch/qos/logback/core/Layout;->doLayout(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "msg":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 102
    return-void

    .line 104
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->maxMessageSize:I

    if-le v1, v2, :cond_2

    .line 105
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 107
    :cond_2
    iget-object v1, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->sos:Lch/qos/logback/core/net/SyslogOutputStream;

    iget-object v2, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lch/qos/logback/core/net/SyslogOutputStream;->write([B)V

    .line 108
    iget-object v1, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->sos:Lch/qos/logback/core/net/SyslogOutputStream;

    invoke-virtual {v1}, Lch/qos/logback/core/net/SyslogOutputStream;->flush()V

    .line 109
    iget-object v1, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->sos:Lch/qos/logback/core/net/SyslogOutputStream;

    invoke-virtual {p0, p1, v1}, Lch/qos/logback/core/net/SyslogAppenderBase;->postProcess(Ljava/lang/Object;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send diagram to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->syslogHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lch/qos/logback/core/net/SyslogAppenderBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public abstract buildLayout()Lch/qos/logback/core/Layout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lch/qos/logback/core/Layout<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract createOutputStream()Lch/qos/logback/core/net/SyslogOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 297
    .local p0, "this":Lch/qos/logback/core/net/SyslogAppenderBase;, "Lch/qos/logback/core/net/SyslogAppenderBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getFacility()Ljava/lang/String;
    .locals 1

    .line 202
    .local p0, "this":Lch/qos/logback/core/net/SyslogAppenderBase;, "Lch/qos/logback/core/net/SyslogAppenderBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->facilityStr:Ljava/lang/String;

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

    .line 258
    .local p0, "this":Lch/qos/logback/core/net/SyslogAppenderBase;, "Lch/qos/logback/core/net/SyslogAppenderBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->layout:Lch/qos/logback/core/Layout;

    return-object v0
.end method

.method public getMaxMessageSize()I
    .locals 1

    .line 243
    .local p0, "this":Lch/qos/logback/core/net/SyslogAppenderBase;, "Lch/qos/logback/core/net/SyslogAppenderBase<TE;>;"
    iget v0, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->maxMessageSize:I

    return v0
.end method

.method public getPort()I
    .locals 1

    .line 227
    .local p0, "this":Lch/qos/logback/core/net/SyslogAppenderBase;, "Lch/qos/logback/core/net/SyslogAppenderBase<TE;>;"
    iget v0, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->port:I

    return v0
.end method

.method public abstract getSeverityForEvent(Ljava/lang/Object;)I
.end method

.method public getSuffixPattern()Ljava/lang/String;
    .locals 1

    .line 279
    .local p0, "this":Lch/qos/logback/core/net/SyslogAppenderBase;, "Lch/qos/logback/core/net/SyslogAppenderBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->suffixPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getSyslogHost()Ljava/lang/String;
    .locals 1

    .line 183
    .local p0, "this":Lch/qos/logback/core/net/SyslogAppenderBase;, "Lch/qos/logback/core/net/SyslogAppenderBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->syslogHost:Ljava/lang/String;

    return-object v0
.end method

.method protected postProcess(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/Object;
    .param p2, "sw"    # Ljava/io/OutputStream;

    .line 117
    .local p0, "this":Lch/qos/logback/core/net/SyslogAppenderBase;, "Lch/qos/logback/core/net/SyslogAppenderBase<TE;>;"
    return-void
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .locals 0
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 306
    .local p0, "this":Lch/qos/logback/core/net/SyslogAppenderBase;, "Lch/qos/logback/core/net/SyslogAppenderBase<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->charset:Ljava/nio/charset/Charset;

    .line 307
    return-void
.end method

.method public setFacility(Ljava/lang/String;)V
    .locals 0
    .param p1, "facilityStr"    # Ljava/lang/String;

    .line 216
    .local p0, "this":Lch/qos/logback/core/net/SyslogAppenderBase;, "Lch/qos/logback/core/net/SyslogAppenderBase<TE;>;"
    if-eqz p1, :cond_0

    .line 217
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 219
    :cond_0
    iput-object p1, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->facilityStr:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public setLayout(Lch/qos/logback/core/Layout;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/Layout<",
            "TE;>;)V"
        }
    .end annotation

    .line 262
    .local p0, "this":Lch/qos/logback/core/net/SyslogAppenderBase;, "Lch/qos/logback/core/net/SyslogAppenderBase<TE;>;"
    .local p1, "layout":Lch/qos/logback/core/Layout;, "Lch/qos/logback/core/Layout<TE;>;"
    const-string v0, "The layout of a SyslogAppender cannot be set directly. See also http://logback.qos.ch/codes.html#syslog_layout"

    invoke-virtual {p0, v0}, Lch/qos/logback/core/net/SyslogAppenderBase;->addWarn(Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public setMaxMessageSize(I)V
    .locals 0
    .param p1, "maxMessageSize"    # I

    .line 254
    .local p0, "this":Lch/qos/logback/core/net/SyslogAppenderBase;, "Lch/qos/logback/core/net/SyslogAppenderBase<TE;>;"
    iput p1, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->maxMessageSize:I

    .line 255
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .line 235
    .local p0, "this":Lch/qos/logback/core/net/SyslogAppenderBase;, "Lch/qos/logback/core/net/SyslogAppenderBase<TE;>;"
    iput p1, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->port:I

    .line 236
    return-void
.end method

.method public setSuffixPattern(Ljava/lang/String;)V
    .locals 0
    .param p1, "suffixPattern"    # Ljava/lang/String;

    .line 289
    .local p0, "this":Lch/qos/logback/core/net/SyslogAppenderBase;, "Lch/qos/logback/core/net/SyslogAppenderBase<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->suffixPattern:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public setSyslogHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "syslogHost"    # Ljava/lang/String;

    .line 193
    .local p0, "this":Lch/qos/logback/core/net/SyslogAppenderBase;, "Lch/qos/logback/core/net/SyslogAppenderBase<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->syslogHost:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public start()V
    .locals 4

    .line 48
    .local p0, "this":Lch/qos/logback/core/net/SyslogAppenderBase;, "Lch/qos/logback/core/net/SyslogAppenderBase<TE;>;"
    const/4 v0, 0x0

    .line 49
    .local v0, "errorCount":I
    iget-object v1, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->facilityStr:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 50
    const-string v1, "The Facility option is mandatory"

    invoke-virtual {p0, v1}, Lch/qos/logback/core/net/SyslogAppenderBase;->addError(Ljava/lang/String;)V

    .line 51
    add-int/lit8 v0, v0, 0x1

    .line 54
    :cond_0
    iget-object v1, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->charset:Ljava/nio/charset/Charset;

    if-nez v1, :cond_1

    .line 57
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    iput-object v1, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->charset:Ljava/nio/charset/Charset;

    .line 61
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lch/qos/logback/core/net/SyslogAppenderBase;->createOutputStream()Lch/qos/logback/core/net/SyslogOutputStream;

    move-result-object v1

    iput-object v1, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->sos:Lch/qos/logback/core/net/SyslogOutputStream;

    .line 63
    invoke-virtual {v1}, Lch/qos/logback/core/net/SyslogOutputStream;->getSendBufferSize()I

    move-result v1

    .line 64
    .local v1, "systemDatagramSize":I
    iget v2, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->maxMessageSize:I

    if-nez v2, :cond_2

    .line 65
    const v2, 0xfde8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->maxMessageSize:I

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Defaulting maxMessageSize to ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->maxMessageSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lch/qos/logback/core/net/SyslogAppenderBase;->addInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_2
    if-le v2, v1, :cond_3

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maxMessageSize of ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->maxMessageSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is larger than the system defined datagram size of ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lch/qos/logback/core/net/SyslogAppenderBase;->addWarn(Ljava/lang/String;)V

    .line 69
    const-string v2, "This may result in dropped logs."

    invoke-virtual {p0, v2}, Lch/qos/logback/core/net/SyslogAppenderBase;->addWarn(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    .end local v1    # "systemDatagramSize":I
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/net/SocketException;
    const-string v2, "Failed to bind to a random datagram socket. Will try to reconnect later."

    invoke-virtual {p0, v2, v1}, Lch/qos/logback/core/net/SyslogAppenderBase;->addWarn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 71
    .end local v1    # "e":Ljava/net/SocketException;
    :catch_1
    move-exception v1

    .line 72
    .local v1, "e":Ljava/net/UnknownHostException;
    const-string v2, "Could not create SyslogWriter"

    invoke-virtual {p0, v2, v1}, Lch/qos/logback/core/net/SyslogAppenderBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    nop

    .end local v1    # "e":Ljava/net/UnknownHostException;
    add-int/lit8 v0, v0, 0x1

    .line 76
    :cond_3
    :goto_0
    nop

    .line 78
    :goto_1
    iget-object v1, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->layout:Lch/qos/logback/core/Layout;

    if-nez v1, :cond_4

    .line 79
    invoke-virtual {p0}, Lch/qos/logback/core/net/SyslogAppenderBase;->buildLayout()Lch/qos/logback/core/Layout;

    move-result-object v1

    iput-object v1, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->layout:Lch/qos/logback/core/Layout;

    .line 82
    :cond_4
    if-nez v0, :cond_5

    .line 83
    invoke-super {p0}, Lch/qos/logback/core/AppenderBase;->start()V

    .line 85
    :cond_5
    return-void
.end method

.method public stop()V
    .locals 1

    .line 267
    .local p0, "this":Lch/qos/logback/core/net/SyslogAppenderBase;, "Lch/qos/logback/core/net/SyslogAppenderBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->sos:Lch/qos/logback/core/net/SyslogOutputStream;

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0}, Lch/qos/logback/core/net/SyslogOutputStream;->close()V

    .line 270
    :cond_0
    invoke-super {p0}, Lch/qos/logback/core/AppenderBase;->stop()V

    .line 271
    return-void
.end method
