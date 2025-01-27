.class public Lorg/jpos/bsh/BSHLogListener$ScriptInfo;
.super Ljava/lang/Object;
.source "BSHLogListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/bsh/BSHLogListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ScriptInfo"
.end annotation


# instance fields
.field code:Ljava/lang/String;

.field lastCheck:J

.field lastModified:J

.field nameSpace:Lbsh/NameSpace;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    return-void
.end method

.method public constructor <init>(Lbsh/NameSpace;)V
    .locals 0
    .param p1, "ns"    # Lbsh/NameSpace;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Lorg/jpos/bsh/BSHLogListener$ScriptInfo;->nameSpace:Lbsh/NameSpace;

    .line 219
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "lastModified"    # J

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    invoke-virtual {p0, p1}, Lorg/jpos/bsh/BSHLogListener$ScriptInfo;->setCode(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0, p2, p3}, Lorg/jpos/bsh/BSHLogListener$ScriptInfo;->setLastModified(J)V

    .line 224
    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lorg/jpos/bsh/BSHLogListener$ScriptInfo;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getLastCheck()J
    .locals 2

    .line 263
    iget-wide v0, p0, Lorg/jpos/bsh/BSHLogListener$ScriptInfo;->lastCheck:J

    return-wide v0
.end method

.method public getLastModified()J
    .locals 2

    .line 247
    iget-wide v0, p0, Lorg/jpos/bsh/BSHLogListener$ScriptInfo;->lastModified:J

    return-wide v0
.end method

.method public getNameSpace()Lbsh/NameSpace;
    .locals 1

    .line 279
    iget-object v0, p0, Lorg/jpos/bsh/BSHLogListener$ScriptInfo;->nameSpace:Lbsh/NameSpace;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .line 239
    iput-object p1, p0, Lorg/jpos/bsh/BSHLogListener$ScriptInfo;->code:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setLastCheck(J)V
    .locals 0
    .param p1, "lastCheck"    # J

    .line 271
    iput-wide p1, p0, Lorg/jpos/bsh/BSHLogListener$ScriptInfo;->lastCheck:J

    .line 272
    return-void
.end method

.method public setLastModified(J)V
    .locals 0
    .param p1, "lastModified"    # J

    .line 255
    iput-wide p1, p0, Lorg/jpos/bsh/BSHLogListener$ScriptInfo;->lastModified:J

    .line 256
    return-void
.end method

.method public setNameSpace(Lbsh/NameSpace;)V
    .locals 0
    .param p1, "nameSpace"    # Lbsh/NameSpace;

    .line 287
    iput-object p1, p0, Lorg/jpos/bsh/BSHLogListener$ScriptInfo;->nameSpace:Lbsh/NameSpace;

    .line 288
    return-void
.end method
