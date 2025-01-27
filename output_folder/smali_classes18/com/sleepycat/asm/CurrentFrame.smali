.class Lcom/sleepycat/asm/CurrentFrame;
.super Lcom/sleepycat/asm/Frame;
.source "CurrentFrame.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/sleepycat/asm/Frame;-><init>()V

    return-void
.end method


# virtual methods
.method execute(IILcom/sleepycat/asm/ClassWriter;Lcom/sleepycat/asm/Item;)V
    .locals 3
    .param p1, "opcode"    # I
    .param p2, "arg"    # I
    .param p3, "cw"    # Lcom/sleepycat/asm/ClassWriter;
    .param p4, "item"    # Lcom/sleepycat/asm/Item;

    .line 50
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sleepycat/asm/Frame;->execute(IILcom/sleepycat/asm/ClassWriter;Lcom/sleepycat/asm/Item;)V

    .line 51
    new-instance v0, Lcom/sleepycat/asm/Frame;

    invoke-direct {v0}, Lcom/sleepycat/asm/Frame;-><init>()V

    .line 52
    .local v0, "successor":Lcom/sleepycat/asm/Frame;
    const/4 v1, 0x0

    invoke-virtual {p0, p3, v0, v1}, Lcom/sleepycat/asm/CurrentFrame;->merge(Lcom/sleepycat/asm/ClassWriter;Lcom/sleepycat/asm/Frame;I)Z

    .line 53
    invoke-virtual {p0, v0}, Lcom/sleepycat/asm/CurrentFrame;->set(Lcom/sleepycat/asm/Frame;)V

    .line 54
    iget-object v2, p0, Lcom/sleepycat/asm/CurrentFrame;->owner:Lcom/sleepycat/asm/Label;

    iput v1, v2, Lcom/sleepycat/asm/Label;->inputStackTop:I

    .line 55
    return-void
.end method
