.class public Lbsh/servlet/BshServlet;
.super Ljavax/servlet/http/HttpServlet;
.source "BshServlet.java"


# static fields
.field static bshVersion:Ljava/lang/String;

.field static exampleScript:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-string/jumbo v0, "print(\"hello!\");"

    sput-object v0, Lbsh/servlet/BshServlet;->exampleScript:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljavax/servlet/http/HttpServlet;-><init>()V

    return-void
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "value"    # Ljava/lang/String;

    .line 287
    const-string v0, "&<>"

    .line 288
    .local v0, "search":Ljava/lang/String;
    const-string v1, "&amp;"

    const-string v2, "&lt;"

    const-string v3, "&gt;"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "replace":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 292
    .local v2, "buf":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 294
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 295
    .local v4, "c":C
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 296
    .local v5, "pos":I
    if-gez v5, :cond_0

    .line 297
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 299
    :cond_0
    aget-object v6, v1, v5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 292
    .end local v4    # "c":C
    .end local v5    # "pos":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 302
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static getBshVersion()Ljava/lang/String;
    .locals 4

    .line 45
    sget-object v0, Lbsh/servlet/BshServlet;->bshVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 46
    return-object v0

    .line 57
    :cond_0
    new-instance v0, Lbsh/Interpreter;

    invoke-direct {v0}, Lbsh/Interpreter;-><init>()V

    .line 59
    .local v0, "bsh":Lbsh/Interpreter;
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    const-class v2, Lbsh/servlet/BshServlet;

    const-string v3, "getVersion.bsh"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 60
    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 59
    invoke-virtual {v0, v1}, Lbsh/Interpreter;->eval(Ljava/io/Reader;)Ljava/lang/Object;

    .line 61
    const-string v1, "getVersion()"

    invoke-virtual {v0, v1}, Lbsh/Interpreter;->eval(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lbsh/servlet/BshServlet;->bshVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_0

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BeanShell: unknown version"

    sput-object v2, Lbsh/servlet/BshServlet;->bshVersion:Ljava/lang/String;

    .line 66
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    sget-object v1, Lbsh/servlet/BshServlet;->bshVersion:Ljava/lang/String;

    return-object v1
.end method


# virtual methods
.method public doGet(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 17
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    move-object/from16 v12, p1

    const-string v0, "bsh.script"

    invoke-interface {v12, v0}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 74
    .local v13, "script":Ljava/lang/String;
    const-string v0, "bsh.client"

    invoke-interface {v12, v0}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 75
    .local v14, "client":Ljava/lang/String;
    const-string v0, "bsh.servlet.output"

    invoke-interface {v12, v0}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 76
    .local v15, "output":Ljava/lang/String;
    nop

    .line 77
    const-string v0, "bsh.servlet.captureOutErr"

    invoke-interface {v12, v0}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 78
    .local v11, "captureOutErr":Ljava/lang/String;
    const/4 v0, 0x0

    .line 79
    .local v0, "capture":Z
    if-eqz v11, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const/4 v0, 0x1

    move/from16 v16, v0

    goto :goto_0

    .line 82
    :cond_0
    move/from16 v16, v0

    .end local v0    # "capture":Z
    .local v16, "capture":Z
    :goto_0
    const/4 v7, 0x0

    .line 83
    .local v7, "scriptResult":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 84
    .local v8, "scriptError":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 85
    .local v3, "scriptOutput":Ljava/lang/StringBuffer;
    if-eqz v13, :cond_1

    .line 87
    move-object/from16 v1, p0

    move-object v2, v13

    move/from16 v4, v16

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lbsh/servlet/BshServlet;->evalScript(Ljava/lang/String;Ljava/lang/StringBuffer;ZLjavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    .line 91
    move-object v1, v8

    goto :goto_1

    .line 89
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    move-object v8, v0

    move-object v0, v7

    move-object v1, v8

    goto :goto_1

    .line 85
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v0, v7

    move-object v1, v8

    .line 94
    .end local v7    # "scriptResult":Ljava/lang/Object;
    .end local v8    # "scriptError":Ljava/lang/Exception;
    .local v0, "scriptResult":Ljava/lang/Object;
    .local v1, "scriptError":Ljava/lang/Exception;
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Bsh-Return"

    move-object/from16 v10, p2

    invoke-interface {v10, v4, v2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    if-eqz v15, :cond_2

    const-string/jumbo v2, "raw"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    if-eqz v14, :cond_4

    .line 97
    const-string v2, "Remote"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 98
    :cond_3
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object v7, v1

    move-object v8, v0

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Lbsh/servlet/BshServlet;->sendRaw(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    move-object v2, v11

    goto :goto_2

    .line 101
    :cond_4
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object v7, v13

    move-object v8, v1

    move-object v9, v0

    move-object v10, v3

    move-object v2, v11

    .end local v11    # "captureOutErr":Ljava/lang/String;
    .local v2, "captureOutErr":Ljava/lang/String;
    move/from16 v11, v16

    invoke-virtual/range {v4 .. v11}, Lbsh/servlet/BshServlet;->sendHTML(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/StringBuffer;Z)V

    .line 103
    :goto_2
    return-void
.end method

.method public doPost(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 0
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    invoke-virtual {p0, p1, p2}, Lbsh/servlet/BshServlet;->doGet(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 240
    return-void
.end method

.method evalScript(Ljava/lang/String;Ljava/lang/StringBuffer;ZLjavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Ljava/lang/Object;
    .locals 8
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "scriptOutput"    # Ljava/lang/StringBuffer;
    .param p3, "captureOutErr"    # Z
    .param p4, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p5, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 248
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 249
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 253
    .local v1, "pout":Ljava/io/PrintStream;
    new-instance v2, Lbsh/Interpreter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v1, v4}, Lbsh/Interpreter;-><init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;Z)V

    .line 256
    .local v2, "bsh":Lbsh/Interpreter;
    const-string v3, "bsh.httpServletRequest"

    invoke-virtual {v2, v3, p4}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 257
    const-string v3, "bsh.httpServletResponse"

    invoke-virtual {v2, v3, p5}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 260
    const/4 v3, 0x0

    .line 261
    .local v3, "result":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 262
    .local v4, "error":Ljava/lang/String;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 263
    .local v5, "sout":Ljava/io/PrintStream;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 264
    .local v6, "serr":Ljava/io/PrintStream;
    if-eqz p3, :cond_0

    .line 265
    invoke-static {v1}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 266
    invoke-static {v1}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 270
    :cond_0
    :try_start_0
    invoke-virtual {v2, p1}, Lbsh/Interpreter;->eval(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v7

    .line 272
    if-eqz p3, :cond_1

    .line 273
    invoke-static {v5}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 274
    invoke-static {v6}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 277
    :cond_1
    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    .line 278
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 279
    return-object v3

    .line 272
    :catchall_0
    move-exception v7

    if-eqz p3, :cond_2

    .line 273
    invoke-static {v5}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 274
    invoke-static {v6}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    :cond_2
    throw v7
.end method

.method formatScriptResultHTML(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 7
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/Object;
    .param p3, "error"    # Ljava/lang/Exception;
    .param p4, "scriptOutput"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    if-eqz p3, :cond_2

    .line 165
    new-instance v0, Lbsh/servlet/SimpleTemplate;

    .line 166
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "error.template"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/servlet/SimpleTemplate;-><init>(Ljava/net/URL;)V

    .line 170
    .local v0, "tmplt":Lbsh/servlet/SimpleTemplate;
    instance-of v1, p3, Lbsh/EvalError;

    if-eqz v1, :cond_1

    .line 172
    move-object v1, p3

    check-cast v1, Lbsh/EvalError;

    invoke-virtual {v1}, Lbsh/EvalError;->getErrorLineNumber()I

    move-result v1

    .line 173
    .local v1, "lineNo":I
    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "msg":Ljava/lang/String;
    const/4 v3, 0x4

    .line 175
    .local v3, "contextLines":I
    invoke-static {v2}, Lbsh/servlet/BshServlet;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, "errString":Ljava/lang/String;
    const/4 v5, -0x1

    if-le v1, v5, :cond_0

    .line 177
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<hr>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 178
    invoke-virtual {p0, p1, v1, v3}, Lbsh/servlet/BshServlet;->showScriptContextHTML(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 179
    .end local v1    # "lineNo":I
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "contextLines":I
    :cond_0
    goto :goto_0

    .line 180
    .end local v4    # "errString":Ljava/lang/String;
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbsh/servlet/BshServlet;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 182
    .restart local v4    # "errString":Ljava/lang/String;
    :goto_0
    const-string v1, "error"

    invoke-virtual {v0, v1, v4}, Lbsh/servlet/SimpleTemplate;->replace(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .end local v4    # "errString":Ljava/lang/String;
    goto :goto_1

    .line 184
    .end local v0    # "tmplt":Lbsh/servlet/SimpleTemplate;
    :cond_2
    new-instance v0, Lbsh/servlet/SimpleTemplate;

    .line 185
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "result.template"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/servlet/SimpleTemplate;-><init>(Ljava/net/URL;)V

    .line 186
    .restart local v0    # "tmplt":Lbsh/servlet/SimpleTemplate;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbsh/servlet/BshServlet;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "value"

    invoke-virtual {v0, v2, v1}, Lbsh/servlet/SimpleTemplate;->replace(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbsh/servlet/BshServlet;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "output"

    invoke-virtual {v0, v2, v1}, Lbsh/servlet/SimpleTemplate;->replace(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :goto_1
    invoke-virtual {v0}, Lbsh/servlet/SimpleTemplate;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method sendHTML(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/StringBuffer;Z)V
    .locals 4
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .param p3, "script"    # Ljava/lang/String;
    .param p4, "scriptError"    # Ljava/lang/Exception;
    .param p5, "scriptResult"    # Ljava/lang/Object;
    .param p6, "scriptOutput"    # Ljava/lang/StringBuffer;
    .param p7, "capture"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    new-instance v0, Lbsh/servlet/SimpleTemplate;

    const-class v1, Lbsh/servlet/BshServlet;

    .line 113
    const-string/jumbo v2, "page.template"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/servlet/SimpleTemplate;-><init>(Ljava/net/URL;)V

    .line 114
    .local v0, "st":Lbsh/servlet/SimpleTemplate;
    invoke-static {}, Lbsh/servlet/BshServlet;->getBshVersion()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2, v1}, Lbsh/servlet/SimpleTemplate;->replace(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "requestURI":Ljava/lang/String;
    const-string/jumbo v2, "servletURL"

    invoke-virtual {v0, v2, v1}, Lbsh/servlet/SimpleTemplate;->replace(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string/jumbo v2, "script"

    if-eqz p3, :cond_0

    .line 122
    invoke-virtual {v0, v2, p3}, Lbsh/servlet/SimpleTemplate;->replace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_0
    sget-object v3, Lbsh/servlet/BshServlet;->exampleScript:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lbsh/servlet/SimpleTemplate;->replace(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :goto_0
    const-string v2, "captureOutErr"

    if-eqz p7, :cond_1

    .line 126
    const-string v3, "CHECKED"

    invoke-virtual {v0, v2, v3}, Lbsh/servlet/SimpleTemplate;->replace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 128
    :cond_1
    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lbsh/servlet/SimpleTemplate;->replace(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :goto_1
    if-eqz p3, :cond_2

    .line 130
    nop

    .line 131
    invoke-virtual {p0, p3, p5, p4, p6}, Lbsh/servlet/BshServlet;->formatScriptResultHTML(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v2

    .line 130
    const-string/jumbo v3, "scriptResult"

    invoke-virtual {v0, v3, v2}, Lbsh/servlet/SimpleTemplate;->replace(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_2
    const-string/jumbo v2, "text/html"

    invoke-interface {p2, v2}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 135
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 136
    .local v2, "out":Ljava/io/PrintWriter;
    invoke-virtual {v0, v2}, Lbsh/servlet/SimpleTemplate;->write(Ljava/io/PrintWriter;)V

    .line 137
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 138
    return-void
.end method

.method sendRaw(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/StringBuffer;)V
    .locals 3
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .param p3, "scriptError"    # Ljava/lang/Exception;
    .param p4, "scriptResult"    # Ljava/lang/Object;
    .param p5, "scriptOutput"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    const-string/jumbo v0, "text/plain"

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 146
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 147
    .local v0, "out":Ljava/io/PrintWriter;
    if-eqz p3, :cond_0

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Script Error:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {p5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    :goto_0
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 152
    return-void
.end method

.method showScriptContextHTML(Ljava/lang/String;II)Ljava/lang/String;
    .locals 10
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "lineNo"    # I
    .param p3, "context"    # I

    .line 199
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 200
    .local v0, "sb":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 202
    .local v1, "br":Ljava/io/BufferedReader;
    sub-int v2, p2, p3

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 203
    .local v2, "beginLine":I
    add-int v4, p2, p3

    .line 204
    .local v4, "endLine":I
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    add-int v6, p2, p3

    add-int/2addr v6, v3

    if-gt v5, v6, :cond_4

    .line 206
    if-ge v5, v2, :cond_0

    .line 209
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    goto :goto_1

    .line 210
    :catch_0
    move-exception v3

    .line 211
    .local v3, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 215
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    if-le v5, v4, :cond_1

    .line 216
    goto :goto_2

    .line 220
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 223
    .local v6, "line":Ljava/lang/String;
    nop

    .line 225
    if-nez v6, :cond_2

    .line 226
    goto :goto_2

    .line 227
    :cond_2
    const-string v7, ": "

    if-ne v5, p2, :cond_3

    .line 228
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<font color=\"red\">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</font><br/>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 230
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<br/>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    .end local v6    # "line":Ljava/lang/String;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 221
    :catch_1
    move-exception v3

    .line 222
    .restart local v3    # "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 233
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "i":I
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
