// Notícias exibidas na janela do lobby (InitNews). Cada notícia aparece UMA vez por jogador — o `id`
// (interno, NÃO enviado ao cliente) rastreia o que cada usuário já viu (user.seenNewsIds). Para lançar
// uma notícia nova, adicione um item com um `id` novo e único; ela aparecerá no próximo login de quem
// ainda não a viu. NÃO reutilize um `id` antigo (senão quem já viu não veria a nova).
export interface NewsItem {
    /** Identificador estável e único (só servidor) para rastrear "já visto". Não vai para o cliente. */
    id: string;
    /** URL da imagem (o cliente carrega via Loader). */
    imageUrl: string;
    /** Data exibida no topo (texto pequeno), ex.: "11.07.2026". */
    date: string;
    /** Corpo em HTML. */
    textHtml: string;
}

export const newsData: NewsItem[] = [
    {
        id: "welcome",
        imageUrl: "https://i.8upload.com/image/b3343f9b5cabc9ec/welcome.png",
        date: "13.07.2026",
        textHtml: "<div><b>Welcome to SkidTanks</b><br/>Dont forget to join our discord server!<br/>https://discord.gg/Tp7U6EyJkT</div>",
    },
];
