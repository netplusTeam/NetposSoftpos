.class public abstract Lcom/sleepycat/asm/ModuleVisitor;
.super Ljava/lang/Object;
.source "ModuleVisitor.java"


# instance fields
.field protected final api:I

.field protected mv:Lcom/sleepycat/asm/ModuleVisitor;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "api"    # I

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/asm/ModuleVisitor;-><init>(ILcom/sleepycat/asm/ModuleVisitor;)V

    .line 66
    return-void
.end method

.method public constructor <init>(ILcom/sleepycat/asm/ModuleVisitor;)V
    .locals 1
    .param p1, "api"    # I
    .param p2, "mv"    # Lcom/sleepycat/asm/ModuleVisitor;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/high16 v0, 0x60000

    if-ne p1, v0, :cond_0

    .line 81
    iput p1, p0, Lcom/sleepycat/asm/ModuleVisitor;->api:I

    .line 82
    iput-object p2, p0, Lcom/sleepycat/asm/ModuleVisitor;->mv:Lcom/sleepycat/asm/ModuleVisitor;

    .line 83
    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public visitEnd()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/sleepycat/asm/ModuleVisitor;->mv:Lcom/sleepycat/asm/ModuleVisitor;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Lcom/sleepycat/asm/ModuleVisitor;->visitEnd()V

    .line 189
    :cond_0
    return-void
.end method

.method public varargs visitExport(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 1
    .param p1, "packaze"    # Ljava/lang/String;
    .param p2, "access"    # I
    .param p3, "modules"    # [Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/sleepycat/asm/ModuleVisitor;->mv:Lcom/sleepycat/asm/ModuleVisitor;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/asm/ModuleVisitor;->visitExport(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 137
    :cond_0
    return-void
.end method

.method public visitMainClass(Ljava/lang/String;)V
    .locals 1
    .param p1, "mainClass"    # Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/sleepycat/asm/ModuleVisitor;->mv:Lcom/sleepycat/asm/ModuleVisitor;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0, p1}, Lcom/sleepycat/asm/ModuleVisitor;->visitMainClass(Ljava/lang/String;)V

    .line 94
    :cond_0
    return-void
.end method

.method public varargs visitOpen(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 1
    .param p1, "packaze"    # Ljava/lang/String;
    .param p2, "access"    # I
    .param p3, "modules"    # [Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/sleepycat/asm/ModuleVisitor;->mv:Lcom/sleepycat/asm/ModuleVisitor;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/asm/ModuleVisitor;->visitOpen(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 154
    :cond_0
    return-void
.end method

.method public visitPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "packaze"    # Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/sleepycat/asm/ModuleVisitor;->mv:Lcom/sleepycat/asm/ModuleVisitor;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, p1}, Lcom/sleepycat/asm/ModuleVisitor;->visitPackage(Ljava/lang/String;)V

    .line 105
    :cond_0
    return-void
.end method

.method public varargs visitProvide(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "providers"    # [Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lcom/sleepycat/asm/ModuleVisitor;->mv:Lcom/sleepycat/asm/ModuleVisitor;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/asm/ModuleVisitor;->visitProvide(Ljava/lang/String;[Ljava/lang/String;)V

    .line 179
    :cond_0
    return-void
.end method

.method public visitRequire(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "access"    # I
    .param p3, "version"    # Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/sleepycat/asm/ModuleVisitor;->mv:Lcom/sleepycat/asm/ModuleVisitor;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/asm/ModuleVisitor;->visitRequire(Ljava/lang/String;ILjava/lang/String;)V

    .line 120
    :cond_0
    return-void
.end method

.method public visitUse(Ljava/lang/String;)V
    .locals 1
    .param p1, "service"    # Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/sleepycat/asm/ModuleVisitor;->mv:Lcom/sleepycat/asm/ModuleVisitor;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0, p1}, Lcom/sleepycat/asm/ModuleVisitor;->visitUse(Ljava/lang/String;)V

    .line 166
    :cond_0
    return-void
.end method
