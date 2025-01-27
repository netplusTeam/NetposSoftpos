.class Ljavassist/compiler/MemberCodeGen$JsrHook;
.super Ljavassist/compiler/CodeGen$ReturnHook;
.source "MemberCodeGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/compiler/MemberCodeGen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JsrHook"
.end annotation


# instance fields
.field cgen:Ljavassist/compiler/CodeGen;

.field jsrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field

.field var:I


# direct methods
.method constructor <init>(Ljavassist/compiler/CodeGen;)V
    .locals 1
    .param p1, "gen"    # Ljavassist/compiler/CodeGen;

    .line 118
    invoke-direct {p0, p1}, Ljavassist/compiler/CodeGen$ReturnHook;-><init>(Ljavassist/compiler/CodeGen;)V

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavassist/compiler/MemberCodeGen$JsrHook;->jsrList:Ljava/util/List;

    .line 120
    iput-object p1, p0, Ljavassist/compiler/MemberCodeGen$JsrHook;->cgen:Ljavassist/compiler/CodeGen;

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Ljavassist/compiler/MemberCodeGen$JsrHook;->var:I

    .line 122
    return-void
.end method

.method private getVar(I)I
    .locals 1
    .param p1, "size"    # I

    .line 125
    iget v0, p0, Ljavassist/compiler/MemberCodeGen$JsrHook;->var:I

    if-gez v0, :cond_0

    .line 126
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen$JsrHook;->cgen:Ljavassist/compiler/CodeGen;

    invoke-virtual {v0}, Ljavassist/compiler/CodeGen;->getMaxLocals()I

    move-result v0

    iput v0, p0, Ljavassist/compiler/MemberCodeGen$JsrHook;->var:I

    .line 127
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen$JsrHook;->cgen:Ljavassist/compiler/CodeGen;

    invoke-virtual {v0, p1}, Ljavassist/compiler/CodeGen;->incMaxLocals(I)V

    .line 130
    :cond_0
    iget v0, p0, Ljavassist/compiler/MemberCodeGen$JsrHook;->var:I

    return v0
.end method

.method private jsrJmp(Ljavassist/bytecode/Bytecode;)V
    .locals 5
    .param p1, "b"    # Ljavassist/bytecode/Bytecode;

    .line 134
    const/16 v0, 0xa7

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 135
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen$JsrHook;->jsrList:Ljava/util/List;

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p1}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Ljavassist/compiler/MemberCodeGen$JsrHook;->var:I

    const/4 v4, 0x1

    aput v2, v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {p1, v3}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 137
    return-void
.end method


# virtual methods
.method protected doit(Ljavassist/bytecode/Bytecode;I)Z
    .locals 2
    .param p1, "b"    # Ljavassist/bytecode/Bytecode;
    .param p2, "opcode"    # I

    .line 141
    const/4 v0, 0x2

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    .line 171
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "fatal"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :pswitch_0
    invoke-direct {p0, p1}, Ljavassist/compiler/MemberCodeGen$JsrHook;->jsrJmp(Ljavassist/bytecode/Bytecode;)V

    .line 144
    goto :goto_0

    .line 146
    :pswitch_1
    invoke-direct {p0, v1}, Ljavassist/compiler/MemberCodeGen$JsrHook;->getVar(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    .line 147
    invoke-direct {p0, p1}, Ljavassist/compiler/MemberCodeGen$JsrHook;->jsrJmp(Ljavassist/bytecode/Bytecode;)V

    .line 148
    iget v0, p0, Ljavassist/compiler/MemberCodeGen$JsrHook;->var:I

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 149
    goto :goto_0

    .line 161
    :pswitch_2
    invoke-direct {p0, v0}, Ljavassist/compiler/MemberCodeGen$JsrHook;->getVar(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addDstore(I)V

    .line 162
    invoke-direct {p0, p1}, Ljavassist/compiler/MemberCodeGen$JsrHook;->jsrJmp(Ljavassist/bytecode/Bytecode;)V

    .line 163
    iget v0, p0, Ljavassist/compiler/MemberCodeGen$JsrHook;->var:I

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addDload(I)V

    .line 164
    goto :goto_0

    .line 166
    :pswitch_3
    invoke-direct {p0, v1}, Ljavassist/compiler/MemberCodeGen$JsrHook;->getVar(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addFstore(I)V

    .line 167
    invoke-direct {p0, p1}, Ljavassist/compiler/MemberCodeGen$JsrHook;->jsrJmp(Ljavassist/bytecode/Bytecode;)V

    .line 168
    iget v0, p0, Ljavassist/compiler/MemberCodeGen$JsrHook;->var:I

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addFload(I)V

    .line 169
    goto :goto_0

    .line 156
    :pswitch_4
    invoke-direct {p0, v0}, Ljavassist/compiler/MemberCodeGen$JsrHook;->getVar(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addLstore(I)V

    .line 157
    invoke-direct {p0, p1}, Ljavassist/compiler/MemberCodeGen$JsrHook;->jsrJmp(Ljavassist/bytecode/Bytecode;)V

    .line 158
    iget v0, p0, Ljavassist/compiler/MemberCodeGen$JsrHook;->var:I

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addLload(I)V

    .line 159
    goto :goto_0

    .line 151
    :pswitch_5
    invoke-direct {p0, v1}, Ljavassist/compiler/MemberCodeGen$JsrHook;->getVar(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addIstore(I)V

    .line 152
    invoke-direct {p0, p1}, Ljavassist/compiler/MemberCodeGen$JsrHook;->jsrJmp(Ljavassist/bytecode/Bytecode;)V

    .line 153
    iget v0, p0, Ljavassist/compiler/MemberCodeGen$JsrHook;->var:I

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addIload(I)V

    .line 154
    nop

    .line 174
    :goto_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xac
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
