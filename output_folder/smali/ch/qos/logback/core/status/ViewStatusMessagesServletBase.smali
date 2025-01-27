.class public abstract Lch/qos/logback/core/status/ViewStatusMessagesServletBase;
.super Ljavax/servlet/http/HttpServlet;
.source "ViewStatusMessagesServletBase.java"


# static fields
.field static CLEAR:Ljava/lang/String; = null

.field private static SDF:Lch/qos/logback/core/util/CachingDateFormatter; = null

.field static SUBMIT:Ljava/lang/String; = null

.field private static final serialVersionUID:J = -0x314afbd19aef2263L


# instance fields
.field count:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lch/qos/logback/core/util/CachingDateFormatter;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Lch/qos/logback/core/util/CachingDateFormatter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lch/qos/logback/core/status/ViewStatusMessagesServletBase;->SDF:Lch/qos/logback/core/util/CachingDateFormatter;

    .line 37
    const-string/jumbo v0, "submit"

    sput-object v0, Lch/qos/logback/core/status/ViewStatusMessagesServletBase;->SUBMIT:Ljava/lang/String;

    .line 38
    const-string v0, "Clear"

    sput-object v0, Lch/qos/logback/core/status/ViewStatusMessagesServletBase;->CLEAR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljavax/servlet/http/HttpServlet;-><init>()V

    return-void
.end method

.method private printStatus(Ljava/lang/StringBuilder;Lch/qos/logback/core/status/Status;)V
    .locals 6
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .param p2, "s"    # Lch/qos/logback/core/status/Status;

    .line 157
    iget v0, p0, Lch/qos/logback/core/status/ViewStatusMessagesServletBase;->count:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 158
    const-string v0, "even"

    .local v0, "trClass":Ljava/lang/String;
    goto :goto_0

    .line 160
    .end local v0    # "trClass":Ljava/lang/String;
    :cond_0
    const-string v0, "odd"

    .line 162
    .restart local v0    # "trClass":Ljava/lang/String;
    :goto_0
    const-string v1, "  <tr class=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\">\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    sget-object v1, Lch/qos/logback/core/status/ViewStatusMessagesServletBase;->SDF:Lch/qos/logback/core/util/CachingDateFormatter;

    invoke-interface {p2}, Lch/qos/logback/core/status/Status;->getDate()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lch/qos/logback/core/util/CachingDateFormatter;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "dateStr":Ljava/lang/String;
    const-string v2, "    <td class=\"date\">"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</td>\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const-string v2, "    <td class=\"level\">"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p2}, Lch/qos/logback/core/status/ViewStatusMessagesServletBase;->statusLevelAsString(Lch/qos/logback/core/status/Status;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string v2, "    <td>"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, p2}, Lch/qos/logback/core/status/ViewStatusMessagesServletBase;->abbreviatedOrigin(Lch/qos/logback/core/status/Status;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Lch/qos/logback/core/status/Status;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string v2, "  </tr>\r\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-interface {p2}, Lch/qos/logback/core/status/Status;->getThrowable()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 170
    invoke-interface {p2}, Lch/qos/logback/core/status/Status;->getThrowable()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lch/qos/logback/core/status/ViewStatusMessagesServletBase;->printThrowable(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    .line 172
    :cond_1
    return-void
.end method

.method private printThrowable(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 175
    const-string v0, "  <tr>\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string v0, "    <td colspan=\"4\" class=\"exception\"><pre>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 178
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 179
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 180
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v2}, Lch/qos/logback/core/helpers/Transform;->escapeTags(Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const-string v2, "    </pre></td>\r\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string v2, "  </tr>\r\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    return-void
.end method


# virtual methods
.method abbreviatedOrigin(Lch/qos/logback/core/status/Status;)Ljava/lang/String;
    .locals 5
    .param p1, "s"    # Lch/qos/logback/core/status/Status;

    .line 142
    invoke-interface {p1}, Lch/qos/logback/core/status/Status;->getOrigin()Ljava/lang/Object;

    move-result-object v0

    .line 143
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 144
    const/4 v1, 0x0

    return-object v1

    .line 146
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "fqClassName":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 148
    .local v2, "lastIndex":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 149
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 151
    :cond_1
    return-object v1
.end method

.method protected abstract getPageTitle(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Ljava/lang/String;
.end method

.method protected abstract getStatusManager(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Lch/qos/logback/core/status/StatusManager;
.end method

.method public printCSS(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "localRef"    # Ljava/lang/String;
    .param p2, "output"    # Ljava/io/PrintWriter;

    .line 86
    const-string v0, "  <STYLE TYPE=\"text/css\">\r\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 87
    const-string v0, "    .warn  { font-weight: bold; color: #FF6600;} \r\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 88
    const-string v0, "    .error { font-weight: bold; color: #CC0000;} \r\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 89
    const-string v0, "    table { margin-left: 2em; margin-right: 2em; border-left: 2px solid #AAA; }\r\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 90
    const-string v0, "    tr.even { background: #FFFFFF; }\r\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 91
    const-string v0, "    tr.odd  { background: #EAEAEA; }\r\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 92
    const-string v0, "    td { padding-right: 1ex; padding-left: 1ex; border-right: 2px solid #AAA; }\r\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 93
    const-string v0, "    td.date { text-align: right; font-family: courier, monospace; font-size: smaller; }"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 94
    sget-object v0, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 96
    const-string v0, "  td.level { text-align: right; }"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 97
    sget-object v0, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 98
    const-string v0, "    tr.header { background: #596ED5; color: #FFF; font-weight: bold; font-size: larger; }"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 99
    sget-object v0, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 101
    const-string v0, "  td.exception { background: #A2AEE8; white-space: pre; font-family: courier, monospace;}"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 102
    sget-object v0, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 104
    const-string v0, "  </STYLE>\r\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 106
    return-void
.end method

.method public printHeader(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "buf"    # Ljava/lang/StringBuilder;

    .line 120
    const-string v0, "  <tr class=\"header\">\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string v0, "    <th>Date </th>\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v0, "    <th>Level</th>\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string v0, "    <th>Origin</th>\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v0, "    <th>Message</th>\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v0, "  </tr>\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    return-void
.end method

.method public printList(Ljava/lang/StringBuilder;Lch/qos/logback/core/status/StatusManager;)V
    .locals 4
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .param p2, "sm"    # Lch/qos/logback/core/status/StatusManager;

    .line 109
    const-string v0, "<table>\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p0, p1}, Lch/qos/logback/core/status/ViewStatusMessagesServletBase;->printHeader(Ljava/lang/StringBuilder;)V

    .line 111
    invoke-interface {p2}, Lch/qos/logback/core/status/StatusManager;->getCopyOfStatusList()Ljava/util/List;

    move-result-object v0

    .line 112
    .local v0, "statusList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/status/Status;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/qos/logback/core/status/Status;

    .line 113
    .local v2, "s":Lch/qos/logback/core/status/Status;
    iget v3, p0, Lch/qos/logback/core/status/ViewStatusMessagesServletBase;->count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lch/qos/logback/core/status/ViewStatusMessagesServletBase;->count:I

    .line 114
    invoke-direct {p0, p1, v2}, Lch/qos/logback/core/status/ViewStatusMessagesServletBase;->printStatus(Ljava/lang/StringBuilder;Lch/qos/logback/core/status/Status;)V

    .line 115
    .end local v2    # "s":Lch/qos/logback/core/status/Status;
    goto :goto_0

    .line 116
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    const-string v1, "</table>\r\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    return-void
.end method

.method protected service(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 4
    .param p1, "req"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "resp"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lch/qos/logback/core/status/ViewStatusMessagesServletBase;->count:I

    .line 49
    invoke-virtual {p0, p1, p2}, Lch/qos/logback/core/status/ViewStatusMessagesServletBase;->getStatusManager(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Lch/qos/logback/core/status/StatusManager;

    move-result-object v0

    .line 51
    .local v0, "sm":Lch/qos/logback/core/status/StatusManager;
    const-string/jumbo v1, "text/html"

    invoke-interface {p2, v1}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 52
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 54
    .local v1, "output":Ljava/io/PrintWriter;
    const-string v2, "<html>\r\n"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 55
    const-string v2, "<head>\r\n"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 56
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getContextPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lch/qos/logback/core/status/ViewStatusMessagesServletBase;->printCSS(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 57
    const-string v2, "</head>\r\n"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 58
    const-string v2, "<body>\r\n"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 59
    invoke-virtual {p0, p1, p2}, Lch/qos/logback/core/status/ViewStatusMessagesServletBase;->getPageTitle(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 61
    const-string v2, "<form method=\"POST\">\r\n"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<input type=\"submit\" name=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lch/qos/logback/core/status/ViewStatusMessagesServletBase;->SUBMIT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" value=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lch/qos/logback/core/status/ViewStatusMessagesServletBase;->CLEAR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 63
    const-string v2, "</form>\r\n"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 65
    sget-object v2, Lch/qos/logback/core/status/ViewStatusMessagesServletBase;->CLEAR:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/core/status/ViewStatusMessagesServletBase;->SUBMIT:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    invoke-interface {v0}, Lch/qos/logback/core/status/StatusManager;->clear()V

    .line 67
    new-instance v2, Lch/qos/logback/core/status/InfoStatus;

    const-string v3, "Cleared all status messages"

    invoke-direct {v2, v3, p0}, Lch/qos/logback/core/status/InfoStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Lch/qos/logback/core/status/StatusManager;->add(Lch/qos/logback/core/status/Status;)V

    .line 70
    :cond_0
    const-string v2, "<table>"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v2, "buf":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {p0, v2, v0}, Lch/qos/logback/core/status/ViewStatusMessagesServletBase;->printList(Ljava/lang/StringBuilder;Lch/qos/logback/core/status/StatusManager;)V

    goto :goto_0

    .line 75
    :cond_1
    const-string v3, "Could not find status manager"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 77
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 78
    const-string v3, "</table>"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 79
    const-string v3, "</body>\r\n"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 80
    const-string v3, "</html>\r\n"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 81
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 82
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 83
    return-void
.end method

.method statusLevelAsString(Lch/qos/logback/core/status/Status;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Lch/qos/logback/core/status/Status;

    .line 130
    invoke-interface {p1}, Lch/qos/logback/core/status/Status;->getEffectiveLevel()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 138
    const/4 v0, 0x0

    return-object v0

    .line 136
    :pswitch_0
    const-string v0, "<span class=\"error\">ERROR</span>"

    return-object v0

    .line 134
    :pswitch_1
    const-string v0, "<span class=\"warn\">WARN</span>"

    return-object v0

    .line 132
    :pswitch_2
    const-string v0, "INFO"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
