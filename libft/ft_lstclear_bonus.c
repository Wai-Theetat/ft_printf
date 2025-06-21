/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstclear.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tdharmar <tdharmar@student.42bangkok.co    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/06/21 11:32:06 by tdharmar          #+#    #+#             */
/*   Updated: 2025/06/21 11:32:06 by tdharmar         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_lstclear(t_list **lst, void (*del)(void*))
{
	t_list	*cur;
	t_list	*nxt;

	if (lst && del)
	{
		cur = *lst;
		while (cur)
		{
			nxt = cur->next;
			del(cur->content);
			free(cur);
			cur = nxt;
		}
		*lst = NULL;
	}
}
